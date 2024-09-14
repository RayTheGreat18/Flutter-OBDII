import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:obd2_plugin/obd2_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('obd2_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion returns correct version', () async {
    // Test that the mocked platform version is returned as expected
    expect(await Obd2Plugin.platformVersion, '42');
  });
}
