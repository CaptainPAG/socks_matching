import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:socks_matching/entities/game_step.dart';
import 'package:socks_matching/providers/game_step_provider.dart' as p;
import 'package:socks_matching/providers/level_provider.dart';
import 'package:socks_matching/widgets/cation.dart';
import 'package:socks_matching/widgets/count_down_widget.dart';
import 'package:socks_matching/widgets/result.dart';
import 'package:socks_matching/widgets/tutorial_widget.dart';

class OverlayWidget extends HookConsumerWidget {
  const OverlayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return const Cation();
    }

    final step = ref.watch(p.gameStepProvider);
    final stepNotifier = ref.read(p.gameStepProvider.notifier);

    switch (step) {
      case GameStep.inTutorial:
        return TutorialWidget(onTap: (level) {
          ref.read(levelProvider.notifier).level(level);
          stepNotifier.next();
        });
      case GameStep.inCountdown:
        return CountDownWidget(onFinish: () => stepNotifier.next());
      case GameStep.inGame:
        return Container();
      case GameStep.result:
        return const Result();
    }
  }
}
