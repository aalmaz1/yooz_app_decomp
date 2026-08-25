/// All external hosts/URLs recovered from libapp.so (strings dump).
class Endpoints {
  // --- YOOZ / Taqwa ---
  static const apiHost = 'api.taqwa.io';
  static const apiHttp = 'http://api.taqwa.io'; // present in the binary
  static const apiHttps = 'https://api.taqwa.io';
  static const cdn = 'https://cdn.taqwa.io/';
  static const c = 'https://c.taqwa.io/';
  static const properties = 'https://c.taqwa.io/yooz_world_properties.json';
  static const about = 'https://c.taqwa.io/yooz.html';
  static const yoozSupport = 'https://c.taqwa.io/YoozSupport.html';
  static const supportPage = yoozSupport; // referenced by root_shell.dart
  static const yoozUserPrivate = 'https://c.taqwa.io/yoozer_private.html';
  static const yoozUserPublic = 'https://c.taqwa.io/yoozer_user.html';
  static const defNotice = 'https://c.taqwa.io/def_notice.png';
  static const site = 'https://yooz.com';

  // --- Auth (AWS Amplify / Cognito) ---
  static const cognitoWebDomain = 'taqwa1.auth.us-east-1.amazoncognito.com';

  // --- Quran audio (Malaysian government mirror, worship feature) ---
  static const quranAudio = 'https://quran.islam.gov.my/media/basfar32/';

  // --- Device (Baos SDK) ---
  static const baosOss = 'https://iot-watch.baos.cn/oss/';
  static const baosOssGet = 'https://iot-watch.baos.cn/oss/get/';
  static const baosAppUpdate = 'https://iot-watch.baos.cn/oss/getAppUpdateList';

  // --- Misc ---
  static const geo = 'http://ip-api.com/json/';
  static const ipify = 'https://api.ipify.org?format=json';
  static const fontsGstatic = 'https://fonts.gstatic.com/s/a/';
}
