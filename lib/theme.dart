import 'package:flutter/material.dart';

class YoozTheme {
  static const seed = Color(0xFF1A73E8);

  static ThemeData get light => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: seed),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(centerTitle: true),
      );
}
