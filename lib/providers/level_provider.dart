import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'level_provider.g.dart';

@riverpod
class Level extends _$Level {
  @override
  int build() {
    return 0;
  }

  void level(int level) {
    state = level;
  }
}
