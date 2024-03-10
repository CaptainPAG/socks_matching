import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socks_matching/providers/level_provider.dart';

part 'total_socks_count_provider.g.dart';

@riverpod
int totalSocksCount(TotalSocksCountRef ref) {
  final level = ref.watch(levelProvider);
  switch (level) {
    case 1:
      return 10;
    case 2:
      return 20;
    default:
      return 0;
  }
}
