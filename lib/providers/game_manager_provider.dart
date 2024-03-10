import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socks_matching/game_manager.dart';

part 'game_manager_provider.g.dart';

@riverpod
GameManager gameManager(GameManagerRef ref) {
  return GameManager();
}
