/// Native bridge from [BLfLst]:
/// MethodChannel `com.baos.sdk/channel`
/// BasicMessageChannel `com.baos.sdk/messages` (JSON)
class BaosChannels {
  static const method = 'com.baos.sdk/channel';
  static const messages = 'com.baos.sdk/messages';
}

/// Flutter → Android (subset used by vape home).
abstract class BaosMethods {
  static const startScan = 'startScan';
  static const stopScan = 'stopScan';
  static const connectBle = 'connectBle'; // args: macAddress, isScan
  static const disconnectBle = 'disconnectBle';
  static const unBindWatch = 'unBindWatch';
  static const cigaretteLevel = 'cigaretteLevel';
  static const deviceBattery = 'deviceBattery';
  static const deviceInfo = 'deviceInfo';
  static const isBleOpen = 'isBleOpen';
  static const getBleConnectStatus = 'getBleConnectStatus';
  static const googleLogin = 'google_login';
}

/// Android → Flutter JSON: `{"method":"...","data":{...}}`
/// bleStatus: 0 scan, 1 connecting, 2 bound, 3 fail/disconnect, 5 timeout, 8 bind fail
/// cigaretteLevel payload: `{"cigaretteLevel": <int from Config_items.datas[134]>}`
