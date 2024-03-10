import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:socks_matching/widgets/ui_back.dart';

class TutorialWidget extends StatelessWidget {
  const TutorialWidget({super.key, required this.onTap});

  final Function(int level) onTap;

  @override
  Widget build(BuildContext context) {
    // screen width

    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: UiBack(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Expanded(
                    child:
                        Image(image: AssetImage('assets/tutorial_back.png'))),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Gap(8.0),
                        const Text(
                          '〜あそびかた〜',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(8.0),
                        const Text('① 靴下を素早く片付けるゲームです。',
                            style: TextStyle(color: Colors.white)),
                        const Text('② 同じ柄ペアを探そう！',
                            style: TextStyle(color: Colors.white)),
                        const Text('③ めざせ！最速タイム！！',
                            style: TextStyle(color: Colors.white)),
                        const Gap(12.0),
                        ElevatedButton(
                          onPressed: () => onTap(1),
                          child: const Text('やさしい'),
                        ),
                        const Gap(12.0),
                        ElevatedButton(
                          onPressed: () => onTap(2),
                          child: const Text('むずかしい'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
