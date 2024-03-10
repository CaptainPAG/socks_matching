import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:socks_matching/entities/socks.dart' as entity;
import 'package:socks_matching/providers/level_provider.dart';
import 'package:socks_matching/providers/selected_socks.dart';
import 'package:socks_matching/providers/socks_provider.dart';

class SocksList extends HookConsumerWidget {
  const SocksList({super.key});

  _check(WidgetRef ref, entity.Socks socks) {
    if (socks.isMatched) {
      // 既に選択された靴下の場合
      // 無反応とする
      return;
    }

    final selectedSocks = ref.read(selectedSocksProvider);
    if (selectedSocks == null) {
      // 選択されていない場合
      ref.read(selectedSocksProvider.notifier).select(socks);
    } else if (selectedSocks.id == socks.id) {
      // まったく同じ靴下を選択した場合
      // 無反応とする
      // TODO: Air Audio
    } else if (selectedSocks.type == socks.type) {
      // 同じ靴下タイプを選択した場合
      ref.read(socksProvider.notifier).toggleMatched([selectedSocks, socks]);
      ref.read(selectedSocksProvider.notifier).reset();
    } else {
      // 選択された靴下が異なる場合
      // TODO: Error Audio
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final level = ref.watch(levelProvider);
    if (level == 0) return const Center();

    final socks = ref.watch(socksProvider);
    final screenWidth = useMemoized(() => MediaQuery.of(context).size.width);
    final controller = useMemoized(() => ScrollController(), []);

    return Scrollbar(
      controller: controller,
      thumbVisibility: true,
      trackVisibility: false,
      thickness: 20.0,
      radius: const Radius.circular(10.0),
      child: ListView.builder(
        controller: controller,
        itemBuilder: (cxt, index) {
          return SizedBox(
            width: screenWidth / 5,
            child: GestureDetector(
              onTap: () => _check(ref, socks[index]),
              child: Opacity(
                opacity: socks[index].isMatched ? 0.0 : 1.0,
                child: Image(
                  image: AssetImage(
                    'assets/${socks[index].assetPath}',
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: socks.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
