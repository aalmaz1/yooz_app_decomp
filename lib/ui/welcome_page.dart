import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/api_client.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Spacer(),
              Icon(Icons.watch, size: 96, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 16),
              Text('YOOZ World', style: Theme.of(context).textTheme.displaySmall),
              const Spacer(),
              FilledButton(
                onPressed: () => context.go(AppRoutes.loginRoot),
                child: const SizedBox(
                  width: double.infinity,
                  child: Text('Continue', textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
