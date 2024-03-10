import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socks_matching/entities/socks.dart';

part 'selected_socks.g.dart';

@riverpod
class SelectedSocks extends _$SelectedSocks {
  @override
  Socks? build() {
    return null;
  }

  void select(Socks socks) {
    state = socks.copyWith();
  }

  void reset() {
    state = null;
  }
}
