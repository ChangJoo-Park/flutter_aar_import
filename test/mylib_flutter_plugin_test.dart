import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mylib_flutter_plugin/mylib_flutter_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('mylib_flutter_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await MylibFlutterPlugin.platformVersion, '42');
  });
}
