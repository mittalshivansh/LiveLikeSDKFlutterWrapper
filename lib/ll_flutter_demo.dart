import 'dart:async';

import 'package:flutter/services.dart';

class LlFlutterDemo {
  static const MethodChannel _channel = const MethodChannel('ll_flutter_demo');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
