import 'dart:async';

import 'package:flutter/services.dart';

class FlutterCirrusExampleConfig {
  static const MethodChannel _channel =
      const MethodChannel('flutter_cirrus_example_config');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
