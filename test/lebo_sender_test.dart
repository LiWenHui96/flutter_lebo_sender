import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lebo_sender/lebo_sender.dart';

void main() {
  const MethodChannel channel = MethodChannel('lebo_sender');

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
    expect(await LeboSender.platformVersion, '42');
  });
}
