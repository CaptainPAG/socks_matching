import 'package:flutter/material.dart';
import 'package:socks_matching/widgets/ui_back.dart';

class Cation extends StatelessWidget {
  const Cation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: UiBack(
        child: Text(
          'このゲームは横画面専用です。画面を横にしてプレイしてください。',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
