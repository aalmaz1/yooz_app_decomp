import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'yooz_protocol.dart';

/// A device found by scan (MAC in colon form, as the original used).
class DiscoveredDevice {
  DiscoveredDevice({required this.mac, this.name = '', this.rssi = 0});

  final String mac;
  final String name;
  final int rssi;

  @override
  String toString() => '$name ($mac, $rssi)';
}

/// Minimal msgpack int reader for device -> phone payloads.
/// Device messages are plain int/long sequences (see MessageCodec,
/// MessageBase, Config_items in android/decompiled/).
class _MpReader {
  _MpReader(this.bytes) : pos = 0;

  final Uint8List bytes;
  int pos;

  bool get done => pos >= bytes.length;

  int uint() {
    final h = bytes[pos++];
    if (h < 0x80) return h; // positive fixint
    if (h <= 0x8f) return (h & 0x1f) - 32; // negative fixint
    switch (h) {
      case 0xcc:
        return bytes[pos++]; // uint8
      case 0xcd:
        final v = ByteData.sublistView(bytes, pos, pos + 2).getUint16();
        pos += 2;
        return v;
      case 0xce:
        final v = ByteData.sublistView(bytes, pos, pos + 4).getUint32();
        pos += 4;
        return v;
      case 0xcf:
        final v = ByteData.sublistView(bytes, pos, pos + 8).getUint64();
        pos += 8;
        return v.toInt();
      default:
        throw FormatException('unsupported msgpack int 0x${h.toRadixString(16)}');
    }
  }

  String? string() {
    final h = bytes[pos];
    if (h >= 0xa0 && h <= 0xbf) {
      final n = h & 0x1f;
      pos += 1;
      return String.fromCharCodes(bytes.sublist(pos, pos + n));
    }
    if (h == 0xd9) {
      final n = bytes[pos + 1];
      pos += 2;
      return String.fromCharCodes(bytes.sublist(pos, pos + n));
    }
    return null;
  }
}

/// Clean-room replacement of the original BLE stack:
///   inuker BleLib (Java GATT) + cn.baos.* managers (Java) + libJNIControl.so
///
/// Transport: flutter_blue_plus. Protocol: the recovered
/// [yooz_protocol.dart] + decompiled ground truth
/// (MessageCodec framing, MessageBase header, CatagoryEnum ids,
/// BindProtocol codes, OilBatteryRequest).
///
/// Exposes the same semantics as the original MethodChannel
/// `com.baos.sdk/channel` (see lib/native/baos_channel.dart), but fully
/// in Dart — the Java host is no longer on the critical path.
class YoozBleService {
  YoozBleService() {
    _statusCtl = StreamController<int>.broadcast();
    _devicesCtl = StreamController<List<DiscoveredDevice>>.broadcast();
    _rawCtl = StreamController<Uint8List>.broadcast();
    FlutterBluePlus.scanResults.listen(_onScanResults);
    FlutterBluePlus.connectionStateChanges().listen(_onAdapterState);
  }

  final StreamController<int> _statusCtl;
  final StreamController<List<DiscoveredDevice>> _devicesCtl;
  final StreamController<Uint8List> _rawCtl;

  BluetoothDevice? _device;
  BluetoothCharacteristic? _write;
  BluetoothCharacteristic? _notify;
  StreamSubscription<List<BluetoothService>>? _servicesSub;
  final BytesBuilder _rx = BytesBuilder();

  int _status = _stDisconnected;
  final Map<String, DiscoveredDevice> _devices = {};

  Completer<int>? _pairResultPending;
  Completer<List<int>>? _configPending;
  Completer<int>? _batteryPending;
  Timer? _opTimeout;

  int? cigaretteLevel;
  int? deviceBattery;
  bool isScanning = false;

  final StreamController<int?> _levelCtl = StreamController<int?>.broadcast();
  Stream<int?> get levelStream => _levelCtl.stream;

  // ---- bleStatus codes (contract from lib/native/baos_channel.dart) ----
  static const int stScan = 0;
  static const int stConnecting = 1;
  static const int stBound = 2;
  static const int stDisconnected = 3;
  static const int stTimeout = 5;
  static const int stBindFail = 8;

  int get status => _status;
  String? get connectedMac;

  Stream<int> get statusStream => _statusCtl.stream;
  Stream<List<DiscoveredDevice>> get devicesStream => _devicesCtl.stream;
  Stream<Uint8List> get rawFrames => _rawCtl.stream;

  void _setStatus(int s) {
    if (_status == s) return;
    _status = s;
    _statusCtl.add(s);
  }

  // ---------------- BaosMethods surface ----------------

  Future<bool> isBleOpen() async {
    try {
      return await FlutterBluePlus.adapterState.where((s) =>
          s == BluetoothAdapterState.on || s == BluetoothAdapterState.off)
          .first == BluetoothAdapterState.on;
    } catch (_) {
      return false;
    }
  }

  Future<int> getBleConnectStatus() async => status;

  Future<void> startScan({Duration timeout = const Duration(seconds: 15)}) async {
    if (!await isBleOpen()) return;
    _devices.clear();
    isScanning = true;
    _setStatus(_stConnecting == status ? status : stScan);
    try {
      await FlutterBluePlus.startScan(
        timeout: timeout,
        // Filter by the YOOZ primary service where the OS allows it;
        // the huabao advert filter below is the authoritative check.
        withServices: [Guid(YoozBle.serviceUuid)],
      );
    } catch (_) {
      // Some devices ignore service filters — fall back to a raw scan.
      try {
        await FlutterBluePlus.startScan(timeout: timeout);
      } catch (_) {}
    }
  }

  Future<void> stopScan() async {
    isScanning = false;
    try {
      await FlutterBluePlus.stopScan();
    } catch (_) {}
    if (status == stScan) _setStatus(stDisconnected);
  }

  Future<void> connect({required String mac, int? matchCode}) async {
    await stopScan();
    final dev = BluetoothDevice.fromId(mac.replaceAll('-', ':'));
    _device = dev;
    _setStatus(stConnecting);

    final op = _withTimeout(
      dev.connect(
        timeout: const Duration(seconds: 20),
        mtu: YoozBle.mtu, // 244 — recovered constant
      ),
      'connect',
    );
    try {
      await op;
    } catch (_) {
      _setStatus(stDisconnected);
      rethrow;
    }

    final services = await dev.discoverServices();
    _write = null;
    _notify = null;
    for (final s in services) {
      if (s.uuid == Guid(YoozBle.serviceUuid)) {
        for (final c in s.characteristics) {
          if (c.uuid == Guid(YoozBle.writeUuid)) _write = c;
          if (c.uuid == Guid(YoozBle.notifyUuid)) _notify = c;
        }
      }
    }
    if (_write == null || _notify == null) {
      _setStatus(stDisconnected);
      try {
        await dev.disconnect();
      } catch (_) {}
      throw StateError('YOOZ service ${YoozBle.serviceUuid} not found');
    }

    await _notify!.setNotifyValue(true); // enables CCCD (00002902)
    _notify!.onValueReceived.listen(_onNotify);

    if (matchCode != null) {
      await bind(matchCode); // pairing flow
    } else {
      _setStatus(stBound); // known/bound device: connected is enough
      unawaited(requestCigaretteLevel());
    }
  }

  Future<void> disconnect() async {
    try {
      await _device?.disconnect();
    } catch (_) {}
    _setStatus(stDisconnected);
  }

  /// Pairing flow (BindProtocol): send CommandPhoneAskPair
  /// (cat 10021, header + phone_type + match_code); unbound devices only
  /// accept packets carrying match_code. Codes: 888 bind, 777 unbind.
  /// Reply CommandPhonePairResult (10020): pair_result == 1 -> success.
  Future<bool> bind(int matchCode) async {
    final pending = Completer<int>();
    _pairResultPending = pending;
    await _send(packBind(matchCode: matchCode, phoneType: 'android'));
    final result = await _first(pending.future, 'bind');
    _pairResultPending = null;
    if (result == 1) {
      _setStatus(stBound);
      unawaited(requestCigaretteLevel());
      return true;
    }
    _setStatus(stBindFail);
    return false;
  }

  Future<bool> unbind() async => bind(YoozBind.unbind);

  /// OilBatteryRequest: Request_get_data(cat=CONFIG_ITEMS 30303);
  /// reply Config_items.datas[134] = e-liquid level.
  Future<int?> requestCigaretteLevel() async {
    final pending = Completer<List<int>>();
    _configPending = pending;
    await _send(packOilRequest());
    final datas = await _first(pending.future, 'config');
    _configPending = null;
    final level = oilLevelFromConfigItems(datas);
    if (level != null) {
      cigaretteLevel = level;
      _levelCtl.add(level);
    }
    return level;
  }

  /// SENSOR_DATA_BATTERY (130004) request; exact reply layout beyond the
  /// category header is not documented in the recovered sources — first
  /// int is the working assumption.
  Future<int?> requestDeviceBattery() async {
    final pending = Completer<int>();
    _batteryPending = pending;
    await _send(packGetData(YoozCat.sensorBattery));
    final v = await _first(pending.future, 'battery');
    _batteryPending = null;
    deviceBattery = v;
    return v;
  }

  Future<void> dispose() async {
    await disconnect();
    await stopScan();
    await _servicesSub?.cancel();
    await _statusCtl.close();
    await _devicesCtl.close();
    await _rawCtl.close();
    await _levelCtl.close();
  }

  // ---------------- internals ----------------

  Future<T> _first<T>(Future<T> f, String what) {
    _opTimeout?.cancel();
    _opTimeout = Timer(const Duration(seconds: 10), () {
      if (!f.isCompleted) _setStatus(stTimeout);
    });
    return f.timeout(const Duration(seconds: 10), onTimeout: () {
      throw TimeoutException('$what timeout');
    }).whenComplete(_opTimeout?.cancel);
  }

  Future<void> _withTimeout(Future<void> f, String what) =>
      f.timeout(const Duration(seconds: 30), onTimeout: () {
        throw TimeoutException('$what timeout');
      });

  Future<void> _send(Uint8List frameBytes) async {
    final w = _write;
    if (w == null) throw StateError('not connected');
    await w.write(frameBytes, withoutResponse: false);
  }

  void _onScanResults(List<ScanResult> results) {
    for (final r in results) {
      final mac = r.device.remoteId.str;
      final name = r.adData.advName.isEmpty
          ? r.device.platformName
          : r.adData.advName;
      final d = DiscoveredDevice(mac: mac, name: name, rssi: r.rssi);
      if (matchesHuabao(r.adData, mac) || name.toUpperCase().contains('YOOZ')) {
        _devices[mac] = d;
        _devicesCtl.add(_devices.values.toList());
      }
    }
  }

  void _onAdapterState(BluetoothConnectionState _) {
    // adapter-level reconnects surface via device.connectionState;
    // kept as a hook for parity with the original SDK behaviour.
  }

  /// The original filtered raw advertise bytes with [isHuabaoAdvert];
  /// flutter_blue_plus gives us structured AdData instead, so we run the
  /// recovered filter over every service-data / manufacturer-data blob.
  bool matchesHuabao(AdData ad, String mac) {
    for (final v in ad.serviceData.values) {
      if (isHuabaoAdvert(v, mac)) return true;
    }
    for (final v in ad.manufacturerData.values) {
      if (isHuabaoAdvert(v, mac)) return true;
    }
    return false;
  }

  /// Notification bytes -> length-prefixed frames (int32be total length,
  /// MessageCodec) -> dispatch by msgpack category.
  void _onNotify(List<int> bytes) {
    _rx.add(bytes);
    var buf = _rx.toBytes();
    while (true) {
      if (buf.length < 4) return;
      final total = ByteData.sublistView(buf, 0, 4).getUint32();
      if (total < 4 || buf.length < total) return; // wait for more
      final frame = buf.sublist(0, total);
      _rx.clear();
      buf = _rx.toBytes();
      _rawCtl.add(frame);
      _dispatch(frame);
    }
  }

  void _dispatch(Uint8List frame) {
    final r = _MpReader(frame.sublist(4));
    if (r.done) return;
    final cat = r.uint();
    switch (cat) {
      case YoozCat.phonePairResult: // 10020: MessageBase header + pair_result
        if (r.done) return;
        r.uint(); // id
        r.uint(); // rank
        r.uint(); // addtime
        r.uint(); // tag
        if (r.done) return;
        final result = r.uint();
        if (!_pairResultPending!.isCompleted) _pairResultPending!.complete(result);
        break;
      case YoozCat.configItems: // 30303: category + n + n ints
        if (r.done) return;
        final n = r.uint();
        final datas = <int>[];
        for (var i = 0; i < n && !r.done; i++) {
          datas.add(r.uint());
        }
        if (!_configPending!.isCompleted) _configPending!.complete(datas);
        break;
      case YoozCat.sensorBattery: // 130004
        if (r.done) return;
        final v = r.uint();
        if (!_batteryPending!.isCompleted) _batteryPending!.complete(v);
        break;
      default:
        // 30101 no-data, 30300 response msg, 30301 sync, 30302 clock,
        // 30104 device base info, 130005 user info — logged via rawFrames.
        break;
    }
  }
}

final yoozBleServiceProvider = Provider<YoozBleService>((ref) {
  final service = YoozBleService();
  ref.onDispose(service.dispose);
  return service;
});
