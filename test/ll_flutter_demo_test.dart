import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ll_flutter_demo/ll_flutter_demo.dart';

void main() {
  const MethodChannel channel = MethodChannel('ll_flutter_demo');

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
    expect(await LlFlutterDemo.platformVersion, '42');
  });
}
