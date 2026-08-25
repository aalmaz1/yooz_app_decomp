import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'data/api_client.dart';
import 'device/pairingGuide/pairing_guide.dart';
import 'device/qrScan/qr_scanner_page.dart';
import 'device/searchDevice/search_device_page.dart';
import 'discover/discover.dart';
import 'game_theme/game/game_list.dart';
import 'game_theme/theme/theme_list.dart';
import 'l10n/app_strings.dart';
import 'msl/msl_setting_page.dart';
import 'theme.dart';
import 'ui/login_page.dart';
import 'ui/root_shell.dart';
import 'ui/welcome_page.dart';
import 'vip/me_vip.dart';

final router = GoRouter(
  initialLocation: '/welcome',
  routes: [
    GoRoute(path: '/welcome', builder: (_, __) => const WelcomePage()),
    GoRoute(path: AppRoutes.loginRoot, builder: (_, __) => const LoginPage()),
    GoRoute(path: AppRoutes.homeRoot, builder: (_, __) => const RootShell()),
    GoRoute(path: AppRoutes.pairingGuide, builder: (_, __) => const PairingGuidePage()),
    GoRoute(path: AppRoutes.scanQr, builder: (_, __) => const QrScannerPage()),
    GoRoute(path: AppRoutes.searchDevice, builder: (_, __) => const SearchDevicePage()),
    GoRoute(path: AppRoutes.discoverRoot, builder: (_, __) => const DiscoverPage()),
    GoRoute(path: AppRoutes.themeList, builder: (_, __) => const ThemeListPage()),
    GoRoute(path: AppRoutes.gameRoot, builder: (_, __) => const GameListPage()),
    GoRoute(path: AppRoutes.meVip, builder: (_, __) => const MeVipPage()),
    GoRoute(path: AppRoutes.devMslSetting, builder: (_, __) => const MslSettingPage()),
  ],
);

class YoozApp extends ConsumerWidget {
  const YoozApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'YOOZ World',
      debugShowCheckedModeBanner: false,
      theme: YoozTheme.light,
      routerConfig: router,
    );
  }
}

extension StringsX on WidgetRef {
  String s(String key) {
    final async = watch(stringsProvider);
    return async.maybeWhen(data: (s) => s(key), orElse: () => key);
  }
}
