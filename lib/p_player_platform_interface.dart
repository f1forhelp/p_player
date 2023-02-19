import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'p_player_method_channel.dart';

abstract class PPlayerPlatform extends PlatformInterface {
  /// Constructs a PPlayerPlatform.
  PPlayerPlatform() : super(token: _token);

  static final Object _token = Object();

  static PPlayerPlatform _instance = MethodChannelPPlayer();

  /// The default instance of [PPlayerPlatform] to use.
  ///
  /// Defaults to [MethodChannelPPlayer].
  static PPlayerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PPlayerPlatform] when
  /// they register themselves.
  static set instance(PPlayerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
