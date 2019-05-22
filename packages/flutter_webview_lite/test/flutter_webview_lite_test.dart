import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_webview_lite/flutter_webview_lite.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_webview_lite');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterWebviewLite.platformVersion, '42');
  });
}
