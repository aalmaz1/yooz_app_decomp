import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app.dart';
import '../data/api_client.dart';
import '../data/endpoints.dart';
import '../discover/discover.dart';
import '../game_theme/game/game_list.dart';
import '../game_theme/theme/theme_list.dart';

class RootShell extends ConsumerStatefulWidget {
  const RootShell({super.key});

  @override
  ConsumerState<RootShell> createState() => _RootShellState();
}

class _RootShellState extends ConsumerState<RootShell> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomeTab(onAdd: () => context.push(AppRoutes.pairingGuide)),
      const DiscoverPage(),
      const ThemeListPage(),
      const GameListPage(),
      const MeTab(),
    ];

    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: [
          NavigationDestination(icon: const Icon(Icons.home_outlined), label: ref.s('home_root')),
          NavigationDestination(icon: const Icon(Icons.explore_outlined), label: ref.s('discover_root')),
          NavigationDestination(icon: const Icon(Icons.palette_outlined), label: ref.s('theme_root')),
          NavigationDestination(icon: const Icon(Icons.sports_esports_outlined), label: ref.s('game_root')),
          NavigationDestination(icon: const Icon(Icons.person_outline), label: ref.s('me_root')),
        ],
      ),
    );
  }
}

class HomeTab extends ConsumerWidget {
  const HomeTab({super.key, required this.onAdd});
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('YOOZ World', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: const Icon(Icons.device_unknown),
              title: Text(ref.s('please_connect_device')),
              subtitle: Text(ref.s('add_device')),
              trailing: const Icon(Icons.qr_code_scanner),
              onTap: onAdd,
            ),
          ),
          ListTile(
            title: Text(ref.s('search_device')),
            onTap: () => context.push(AppRoutes.searchDevice),
          ),
          ListTile(
            title: Text(ref.s('yooz_support')),
            onTap: () => launchUrl(Uri.parse(Endpoints.supportPage)),
          ),
          ListTile(
            title: Text(ref.s('yooz_more_about')),
            onTap: () => launchUrl(Uri.parse(Endpoints.about)),
          ),
        ],
      ),
    );
  }
}

class MeTab extends ConsumerWidget {
  const MeTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const SizedBox(height: 32),
        Text(ref.s('me_root'), style: Theme.of(context).textTheme.headlineMedium),
        ListTile(
          title: Text(ref.s('become_vip')),
          onTap: () => context.push(AppRoutes.meVip),
        ),
        ListTile(title: Text(ref.s('my_device'))),
        ListTile(title: Text(ref.s('my_theme'))),
        ListTile(
          title: const Text('Prayer / MSL'),
          onTap: () => context.push(AppRoutes.devMslSetting),
        ),
        ListTile(title: Text(ref.s('setting'))),
        ListTile(
          title: Text(ref.s('sign_out')),
          onTap: () => context.go(AppRoutes.loginRoot),
        ),
      ],
    );
  }
}
