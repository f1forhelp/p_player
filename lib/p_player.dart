
import 'p_player_platform_interface.dart';

class PPlayer {
  Future<String?> getPlatformVersion() {
    return PPlayerPlatform.instance.getPlatformVersion();
  }
}
