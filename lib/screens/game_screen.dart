import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:socks_matching/widgets/overlay_widget.dart';
import 'package:socks_matching/widgets/pair_count.dart';
import 'package:socks_matching/widgets/selected_socks_widget.dart' as widget;
import 'package:socks_matching/widgets/socks_list.dart';
import 'package:socks_matching/widgets/timer_widget.dart';

class GameScreen extends HookConsumerWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
              maxWidth: 1000, maxHeight: 600, minWidth: 500, minHeight: 300),
          child: Stack(
            children: [
              // 背景
              SizedBox(
                width: screenWidth,
                child: const Image(
                  image: AssetImage('assets/town_background.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              // 靴下リスト
              const SocksList(),
              // 選択中の靴下
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: screenWidth / 10,
                    height: screenWidth / 10,
                    child: const widget.SelectedSocks(),
                  ),
                ),
              ),
              // ペア数
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: PairCount(),
                ),
              ),
              // タイマー
              const Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TimerWidget(),
                ),
              ),
              // チュートリアル・カウントダウンなど
              const OverlayWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
