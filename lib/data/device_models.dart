import 'dart:convert';

import 'package:flutter/services.dart';

class DeviceModel {
  const DeviceModel({
    required this.name,
    required this.dialWidth,
    required this.dialHeight,
    required this.albumNum,
    required this.support,
    this.blacklist = '',
    this.minimumVersion = '1.0.0',
  });

  final String name;
  final int dialWidth;
  final int dialHeight;
  final int albumNum;
  final List<String> support;
  final String blacklist;
  final String minimumVersion;

  bool get isMuslim => support.contains('Muslim');
  bool get hasHealth => support.contains('GeneralHealth');

  factory DeviceModel.fromJson(Map<String, dynamic> json) {
    final dial = json['dial'] as Map<String, dynamic>? ?? const {};
    return DeviceModel(
      name: json['name'] as String,
      dialWidth: (dial['width'] as num?)?.toInt() ?? 0,
      dialHeight: (dial['height'] as num?)?.toInt() ?? 0,
      albumNum: (json['albumNum'] as num?)?.toInt() ?? 0,
      support: List<String>.from(json['support'] as List? ?? const []),
      blacklist: '${json['blacklist'] ?? ''}',
      minimumVersion: '${json['minimumVersion'] ?? '1.0.0'}',
    );
  }
}

Future<List<DeviceModel>> loadDeviceConfig() async {
  final raw = await rootBundle.loadString('assets/jsonDefault/device_config.json');
  final list = jsonDecode(raw) as List<dynamic>;
  return list.map((e) => DeviceModel.fromJson(e as Map<String, dynamic>)).toList();
}
