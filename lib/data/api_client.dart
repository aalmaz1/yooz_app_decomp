import 'endpoints.dart';

/// Paths recovered from libapp.so (Taqwa API).
class TaqwaApi {
  TaqwaApi({this.baseUrl = Endpoints.apiHttps});

  final String baseUrl;

  Uri getAppVersion() => Uri.parse('$baseUrl/user/get_app_version');
  Uri getUserInfo([String? userId]) => Uri.parse(
        userId == null
            ? '$baseUrl/user/get_user_info'
            : '$baseUrl/user/get_user_info?user_id=$userId',
      );
  Uri updateUserInfo([String? userId]) => Uri.parse(
        userId == null
            ? '$baseUrl/user/update_user_info'
            : '$baseUrl/user/update_user_info?user_id=$userId',
      );
  Uri notifications(String userId) =>
      Uri.parse('$baseUrl/user/notifications?user_id=$userId');
  Uri get v2User => Uri.parse('$baseUrl/v2/user/');
}

/// Flutter named routes inferred from the same dump.
abstract class AppRoutes {
  static const themeRoot = '/theme-root';
  static const themeList = '/theme-list';
  static const themeDetail = '/theme-detail';
  static const themeMeAddList = '/theme-me-add-list';
  static const discoverRoot = '/discover-root';
  static const discoverDetail = '/discover-detail';
  static const discoverMessage = '/discover-message';
  static const discoverMessageSetting = '/discover-message_setting';
  static const discoverMessagePost = '/discover-message-post';
  static const deviceInfo = '/device-info-page';
  static const userAgreement = '/user-agreement';
}
