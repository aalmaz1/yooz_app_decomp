import 'package:flutter/material.dart';

class MeVipPage extends StatelessWidget {
  const MeVipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('VIP')),
      body: const Center(child: Text('Become VIP')),
    );
  }
}
