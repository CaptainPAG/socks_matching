import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:socks_matching/providers/game_manager_provider.dart';
import 'package:socks_matching/widgets/ui_back.dart';

class CountDownWidget extends HookConsumerWidget {
  const CountDownWidget({super.key, required this.onFinish});

  final Function onFinish;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameManager = useMemoized(() => ref.read(gameManagerProvider));
    final count = useState(3);

    useMemoized(() {
      Timer.periodic(const Duration(seconds: 1), (timer) {
        if (count.value == 0) {
          timer.cancel();
          onFinish();
          gameManager.start();
        } else {
          count.value--;
        }
      });
    });

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: UiBack(
          child: SizedBox(
            width: 400.0,
            height: 200.0,
            child: Center(
              child: Text(
                count.value > 0 ? count.value.toString() : 'START!!',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
