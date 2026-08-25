import 'dart:typed_data';

/// Huabao / YOOZ BLE + MessagePack framing recovered from the APK.
class YoozBle {
  static const serviceUuid = 'efcdab89-6745-2301-efcd-ab8967452301';
  static const writeUuid = 'efcdab89-6745-2301-efcd-ab8967452301';
  static const notifyUuid = 'a6ed0202-d344-460a-8075-b9e8ec90d71b';
  static const cccdUuid = '00002902-0000-1000-8000-00805f9b34fb';
  static const mtu = 244;
}

class YoozCat {
  static const messageBase = 100;
  static const phonePairResult = 10020;
  static const phoneAskPair = 10021;
  static const requestGetData = 30100;
  static const configItems = 30303;
  static const sensorBattery = 130004;
}

class YoozBind {
  static const bind = 888;
  static const unbind = 777;
  static const afterTx = 1111;
  static const rank = 20;
}

/// Advertise: bytes before MAC hex are `16` `18`, byte after MAC is `01`.
bool isHuabaoAdvert(List<int> scanRecord, String macColon) {
  final hex = scanRecord.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
  final mac = macColon.replaceAll(':', '').toLowerCase();
  final idx = hex.indexOf(mac.toLowerCase());
  if (idx < 4) return false;
  final c1 = hex.substring(idx - 4, idx - 2);
  final c2 = hex.substring(idx - 2, idx);
  final after = idx + mac.length;
  if (after + 2 > hex.length) return false;
  final tag = hex.substring(after, after + 2);
  return c1 == '16' && c2 == '18' && tag == '01';
}

Uint8List _packLongs(List<int> values) {
  final out = BytesBuilder();
  for (final v in values) {
    out.add(_msgpackUint(v));
  }
  return out.toBytes();
}

/// Minimal msgpack integer (positive fixint / uint32 / uint64).
Uint8List _msgpackUint(int v) {
  if (v >= 0 && v <= 127) {
    return Uint8List.fromList([v]);
  }
  if (v >= 0 && v <= 0xffffffff) {
    final b = ByteData(5);
    b.setUint8(0, 0xce);
    b.setUint32(1, v);
    return b.buffer.asUint8List();
  }
  final b = ByteData(9);
  b.setUint8(0, 0xcf);
  b.setUint64(1, v);
  return b.buffer.asUint8List();
}

Uint8List _msgpackString(String s) {
  final utf = Uint8List.fromList(s.codeUnits);
  if (utf.length <= 31) {
    return Uint8List.fromList([0xa0 | utf.length, ...utf]);
  }
  final b = BytesBuilder()
    ..add([0xd9, utf.length])
    ..add(utf);
  return b.toBytes();
}

Uint8List frame(Uint8List payload) {
  final total = payload.length + 4;
  final buf = ByteData(total);
  buf.setUint32(0, total);
  final out = buf.buffer.asUint8List();
  out.setRange(4, total, payload);
  return out;
}

/// CommandPhoneAskPair on the wire.
Uint8List packBind({
  required int matchCode,
  required String phoneType,
  int rank = YoozBind.rank,
  int id = 0,
  int tag = 0,
}) {
  final addtime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
  final body = BytesBuilder()
    ..add(_msgpackUint(YoozCat.phoneAskPair))
    ..add(_msgpackUint(id))
    ..add(_msgpackUint(rank))
    ..add(_msgpackUint(addtime))
    ..add(_msgpackUint(tag))
    ..add(_msgpackString(phoneType))
    ..add(_msgpackUint(matchCode));
  return frame(body.toBytes());
}

/// Request_get_data (not a MessageBase — only Serializable + 3 ints).
Uint8List packGetData(int dataCategory, {int lastTs = 0, int enumParam = 0}) {
  final body = _packLongs([YoozCat.requestGetData, dataCategory, lastTs, enumParam]);
  return frame(body);
}

Uint8List packOilRequest() => packGetData(YoozCat.configItems);

int? oilLevelFromConfigItems(List<int> datas) {
  if (datas.length <= 134) return null;
  return datas[134];
}
