import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'p_player_platform_interface.dart';

/// An implementation of [PPlayerPlatform] that uses method channels.
class MethodChannelPPlayer extends PPlayerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('p_player');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
