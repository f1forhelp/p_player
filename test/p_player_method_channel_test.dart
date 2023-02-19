import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:p_player/p_player_method_channel.dart';

void main() {
  MethodChannelPPlayer platform = MethodChannelPPlayer();
  const MethodChannel channel = MethodChannel('p_player');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
