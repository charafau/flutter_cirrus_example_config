import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_cirrus_example_config/flutter_cirrus_example_config.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_cirrus_example_config');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterCirrusExampleConfig.platformVersion, '42');
  });
}
