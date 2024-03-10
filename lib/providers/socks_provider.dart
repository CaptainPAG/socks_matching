import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socks_matching/constants/socks_master.dart';
import 'package:socks_matching/entities/socks.dart' as entity;
import 'package:socks_matching/providers/level_provider.dart';
import 'package:socks_matching/providers/socks_pair_count_provider.dart';
import 'package:socks_matching/providers/total_socks_count_provider.dart';

part 'socks_provider.g.dart';

@riverpod
class Socks extends _$Socks {
  @override
  List<entity.Socks> build() {
    return _init(ref.read(totalSocksCountProvider));
  }

  List<entity.Socks> _init(int socksPairCount) {
    assert(socksPairCount > 0);

    final level = ref.read(levelProvider);
    final int socksSize;
    switch (level) {
      case 2:
        socksSize = level2Socks.length;
        break;
      case 1:
      default:
        socksSize = level1Socks.length;
        break;
    }

    final random = Random();
    final List<entity.Socks> socks = [];
    for (int i = 0; i < socksPairCount / 2; i++) {
      final seed = random.nextInt(socksSize);
      socks.add(socksMaster[seed].copyWith(id: i));
      socks.add(socksMaster[seed].copyWith(id: i + socksPairCount));
    }

    socks.shuffle();

    return socks;
  }

  void toggleMatched(List<entity.Socks> socks) {
    final one = state.indexWhere((element) => element.id == socks[0].id);
    final other = state.indexWhere((element) => element.id == socks[1].id);

    final newList = List.of(state);
    newList[one] = socks[0].copyWith(isMatched: true);
    newList[other] = socks[1].copyWith(isMatched: true);

    // ペアができたことを通知する
    ref.read(socksPairCountProvider.notifier).increment();

    state = [...newList];
  }
}
