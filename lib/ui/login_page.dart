import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../app.dart';
import '../data/api_client.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Text(ref.s('welcome'), style: Theme.of(context).textTheme.headlineSmall),
              const SizedBox(height: 8),
              const Text('YOOZ World'),
              const Spacer(),
              FilledButton.icon(
                onPressed: () => context.go(AppRoutes.homeRoot),
                icon: const Icon(Icons.g_mobiledata),
                label: Text(ref.s('login_with_google')),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () => context.go(AppRoutes.homeRoot),
                icon: const Icon(Icons.apple),
                label: Text(ref.s('login_with_apple')),
              ),
              const SizedBox(height: 16),
              Text(
                '${ref.s('i_agree')} ${ref.s('user_agreement')}',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
