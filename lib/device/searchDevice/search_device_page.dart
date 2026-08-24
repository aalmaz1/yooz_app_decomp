import 'package:flutter/material.dart';

class SearchDevicePage extends StatelessWidget {
  const SearchDevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search device')),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: Text(
          'Scan Huabao advertise (16 18 + MAC + 01), connect GATT '
          'efcdab89-…, bind match_code 888, then request CONFIG_ITEMS 30303 '
          '(oil = datas[134]).',
        ),
      ),
    );
  }
}
