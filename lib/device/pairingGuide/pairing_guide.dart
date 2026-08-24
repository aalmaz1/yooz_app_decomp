import 'package:flutter/material.dart';

class PairingGuidePage extends StatelessWidget {
  const PairingGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips')),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: Text(
          'Activate your device and swipe left until the QR code appears.',
        ),
      ),
    );
  }
}
