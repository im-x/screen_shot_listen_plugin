import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:screen_shot_listen_plugin/screen_shot_listen_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('screen_shot_listen_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(ScreenShotListenPlugin.platformVersion, '42');
  });
}
