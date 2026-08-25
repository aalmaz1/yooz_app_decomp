import 'endpoints.dart';

/// API paths recovered from libapp.so (strings dump, `strings | grep '^/'`).
///
/// The binary stores only the host (`api.taqwa.io`) and the paths as
/// separate literals, so every method here is `baseUrl + path`.
class TaqwaApi {
  TaqwaApi({this.baseUrl = Endpoints.apiHttps});

  final String baseUrl;

  Uri _u(String path) => Uri.parse('$baseUrl$path');

  // --- user ---
  static const user = '/user/';
  static const v2User = '/v2/user/';
  static const my = '/my/';

  Uri getAppVersion() => _u('/user/get_app_version');
  Uri getUserInfo([String? userId]) => _u(
        userId == null
            ? '/user/get_user_info'
            : '/user/get_user_info?user_id=$userId',
      );
  Uri updateUserInfo([String? userId]) => _u(
        userId == null
            ? '/user/update_user_info'
            : '/user/update_user_info?user_id=$userId',
      );

  // --- auth (Cognito + Google + OAuth2) ---
  static const googleLogin = '/google_login';
  static const oauth2Authorize = '/oauth2/authorize';
  static const oauth2Token = '/oauth2/token';

  // --- posts / social (discover) ---
  static const posts = '/posts';
  static const post = '/post/';
  static const postsList = '/posts/';
  static const tagPost = '/posts/tag_post';
  static const comment = '/comment';
  static const comments = '/comments';
  static const like = '/like';
  static const remove = '/remove';

  // --- resources / collections / tags ---
  static const buyResource = '/buy_resource';
  static const delResource = '/del_resource';
  static const addResourceToCollection = '/add_resource_to_collection';
  static const getMyCollections = '/get_my_collections';
  static const getMyLibrary = '/get_my_library';
  static const tagsGetTags = '/tags/get_tags';
  static const tagsGetResource = '/tags/get_resource';
  static const tagsGetResourceByAction = '/tags/get_resource_by_action';
  static const tagsGetResourceState = '/tags/get_resource_state';
  static const tagsGetBindResource = '/tags/get_bind_resource';
  static const tagsAddTagResource = '/tags/add_tag_resource';
  static const tagsUploadFile = '/tags/upload_file';

  // --- bot ---
  static const botLanguageDetection = '/bot/language_detection';
  static const botTranslateText = '/bot/translate_text';

  // --- tracking ---
  static const trk = '/trk';

  // --- partial literals (continuation is built at runtime) ---
  // '/compressed_' + <id>, '/malaysia_' + <file>
  static const compressedPrefix = '/compressed_';
  static const malaysiaPrefix = '/malaysia_';
}

/// Flutter named routes recovered from libapp.so.
///
/// Tab roots: home / dev(device) / discover / game / me.
abstract class AppRoutes {
  // --- tab roots / auth ---
  static const homeRoot = '/home-root';
  static const devRoot = '/dev-root';
  static const discoverRoot = '/discover-root';
  static const gameRoot = '/game-root';
  static const meRoot = '/me-root';
  static const loginRoot = '/login-root';
  static const awsSignUpRoot = '/aws-sign-up-root';

  // --- me ---
  static const meUser = '/me-user';
  static const meInfo = '/me-info';
  static const meVip = '/me-vip';
  static const meTheme = '/me-theme';
  static const meCollection = '/me-collection';
  static const meImageList = '/me-image-list';
  static const meCrop = '/me-crop';
  static const meSetting = '/me-setting';
  static const meRegion = '/me-region';
  static const meMedalInfo = '/me-medal-info';
  static const meAchievements = '/me-achievements';

  // --- device tab ("dev") ---
  static const devMslSetting = '/dev-msl-setting';
  static const devWorship = '/dev-worship';
  static const devAsrMethod = '/dev-asr-method'; // dev tool
  static const devCalcMethod = '/dev-calc-method'; // dev tool
  static const devExternalFiles = '/dev-external-files'; // dev tool

  // --- device pairing / scanning pages ---
  static const connectDevice = '/connect-device-page';
  static const searchDevice = '/search-device-page';
  static const scanQr = '/scan-qr';
  static const scanForDevice = '/scan-for-device';
  static const pairingGuide = '/pairing-guide-page';
  static const deviceInfo = '/device-info-page';
  static const noticeInfo = '/notice-info-page';

  // --- themes ---
  static const themeRoot = '/theme-root';
  static const themeList = '/theme-list';
  static const themeDetail = '/theme-detail';
  static const themeMeAddList = '/theme-me-add-list';

  // --- discover / posts ---
  static const discoverDetail = '/discover-detail';
  static const discoverMessage = '/discover-message';
  static const discoverMessageSetting = '/discover-message_setting';
  static const discoverMessagePost = '/discover-message-post';
  static const addPost = '/add/post';
  static const myPost = '/my-post';
  static const myComment = '/my-comment';
  static const myLike = '/my-like';

  // --- game ---
  static const gameDetail = '/game-detail';

  // --- misc ---
  static const userAgreement = '/user-agreement';
  static const webView = '/web-view-page';
}
