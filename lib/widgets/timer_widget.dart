import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:socks_matching/providers/game_manager_provider.dart';
import 'package:socks_matching/widgets/ui_back.dart';

class TimerWidget extends HookConsumerWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerDisplay = useState('00:00.000');
    final gameManager = useMemoized(() => ref.read(gameManagerProvider));

    useMemoized(() {
      final duration = gameManager.durationStream;
      duration.listen((event) {
        final minutes =
            event.inMinutes.remainder(60).toString().padLeft(2, '0');
        final seconds =
            event.inSeconds.remainder(60).toString().padLeft(2, '0');
        final milliseconds =
            event.inMilliseconds.remainder(1000).toString().padLeft(3, '0');
        timerDisplay.value = '$minutes:$seconds.$milliseconds';
      });
    });

    return UiBack(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.timer,
            color: Colors.white,
          ),
          const Gap(4.0),
          Text(
            timerDisplay.value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
