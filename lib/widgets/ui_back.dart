import 'package:flutter/material.dart';

class UiBack extends StatelessWidget {
  final Widget child;

  const UiBack({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black26,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: child,
    );
  }
}
