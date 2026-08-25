import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
    GoRoute(path: '/login', builder: (_, __) => const LoginPage()),
    GoRoute(path: '/home', builder: (_, __) => const RootShell()),
    GoRoute(path: '/pairing-guide', builder: (_, __) => const PairingGuidePage()),
    GoRoute(path: '/scan', builder: (_, __) => const QrScannerPage()),
    GoRoute(path: '/search-device', builder: (_, __) => const SearchDevicePage()),
    GoRoute(path: '/discover-root', builder: (_, __) => const DiscoverPage()),
    GoRoute(path: '/theme-list', builder: (_, __) => const ThemeListPage()),
    GoRoute(path: '/game-root', builder: (_, __) => const GameListPage()),
    GoRoute(path: '/vip/me_vip', builder: (_, __) => const MeVipPage()),
    GoRoute(path: '/mslSettingPage', builder: (_, __) => const MslSettingPage()),
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
