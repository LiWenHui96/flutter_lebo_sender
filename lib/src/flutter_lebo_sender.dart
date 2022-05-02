import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_lebo_sender/flutter_lebo_sender.dart';

class FlutterLeboSender {
  static const MethodChannel _channel = MethodChannel(channelName);

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
