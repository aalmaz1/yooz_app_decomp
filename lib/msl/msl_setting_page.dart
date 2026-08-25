import 'package:flutter/material.dart';

class MslSettingPage extends StatelessWidget {
  const MslSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prayer times')),
      body: const Center(child: Text('Muslim / Waktu Solat')),
    );
  }
}
