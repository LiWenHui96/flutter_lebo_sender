
import 'dart:async';

import 'package:flutter/services.dart';

class LeboSender {
  static const MethodChannel _channel = MethodChannel('lebo_sender');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
