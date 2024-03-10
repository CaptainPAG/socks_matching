import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socks_matching/providers/selected_socks.dart';
import 'package:socks_matching/widgets/ui_back.dart';

class SelectedSocks extends ConsumerWidget {
  const SelectedSocks({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSocks = ref.watch(selectedSocksProvider);

    return UiBack(
      child: Visibility(
        visible: selectedSocks != null,
        maintainAnimation: true,
        maintainSize: true,
        maintainState: true,
        child: selectedSocks != null
            ? Image(
                image: AssetImage(
                  'assets/${selectedSocks.assetPath}',
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
