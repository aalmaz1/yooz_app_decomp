import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stringsProvider = FutureProvider<AppStrings>((ref) async {
  final raw = await rootBundle.loadString('assets/lang/en.json');
  return AppStrings(Map<String, dynamic>.from(jsonDecode(raw) as Map));
});

class AppStrings {
  AppStrings(this._map);
  final Map<String, dynamic> _map;

  String call(String key) => '${_map[key] ?? key}';
}
