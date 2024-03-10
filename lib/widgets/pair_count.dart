import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socks_matching/providers/socks_pair_count_provider.dart';
import 'package:socks_matching/providers/total_socks_count_provider.dart';
import 'package:socks_matching/widgets/ui_back.dart';

class PairCount extends ConsumerWidget {
  const PairCount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pairCount = ref.watch(socksPairCountProvider);
    return UiBack(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            pairCount.toString(),
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            '/${(ref.watch(totalSocksCountProvider) / 2).toString()}ペア',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
