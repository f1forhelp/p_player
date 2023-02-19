import 'package:flutter_test/flutter_test.dart';
import 'package:p_player/p_player.dart';
import 'package:p_player/p_player_platform_interface.dart';
import 'package:p_player/p_player_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPPlayerPlatform
    with MockPlatformInterfaceMixin
    implements PPlayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PPlayerPlatform initialPlatform = PPlayerPlatform.instance;

  test('$MethodChannelPPlayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPPlayer>());
  });

  test('getPlatformVersion', () async {
    PPlayer pPlayerPlugin = PPlayer();
    MockPPlayerPlatform fakePlatform = MockPPlayerPlatform();
    PPlayerPlatform.instance = fakePlatform;

    expect(await pPlayerPlugin.getPlatformVersion(), '42');
  });
}
