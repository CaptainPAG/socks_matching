import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:socks_matching/providers/game_manager_provider.dart';
import 'package:socks_matching/widgets/ui_back.dart';

class Result extends ConsumerWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scoreDuration = ref.read(gameManagerProvider).scoreDuration();
    final minutes =
        scoreDuration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds =
        scoreDuration.inSeconds.remainder(60).toString().padLeft(2, '0');
    final milliseconds =
        scoreDuration.inMilliseconds.remainder(1000).toString().padLeft(3, '0');
    final score = '$minutes:$seconds.$milliseconds';

    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: UiBack(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'FINISH!!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(8.0),
                  Text(
                    'スコア：$score',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(8.0),
                  const Text(
                    '画面をリロードして\nまた遊んでね！',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
