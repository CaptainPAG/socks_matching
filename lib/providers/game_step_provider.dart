import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socks_matching/entities/game_step.dart' as entity;

part 'game_step_provider.g.dart';

@riverpod
class GameStep extends _$GameStep {
  @override
  entity.GameStep build() {
    return entity.GameStep.inTutorial;
  }

  void next() {
    const steps = entity.GameStep.values;
    if (state.index + 1 < steps.length) {
      state = steps[state.index + 1];
    }
  }
}
