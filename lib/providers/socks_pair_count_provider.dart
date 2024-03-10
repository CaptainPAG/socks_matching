import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socks_matching/providers/game_manager_provider.dart';
import 'package:socks_matching/providers/game_step_provider.dart';
import 'package:socks_matching/providers/total_socks_count_provider.dart';

part 'socks_pair_count_provider.g.dart';

@riverpod
class SocksPairCount extends _$SocksPairCount {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;

    final total = ref.read(totalSocksCountProvider);
    final gameManager = ref.read(gameManagerProvider);
    if (state * 2 == total) {
      gameManager.finish();
      ref.read(gameStepProvider.notifier).next();
    }
  }
}
