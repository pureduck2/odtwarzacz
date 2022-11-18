import 'dart:io';

import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover(
      {super.key,
      this.color = Colors.blue,
      this.constraints =
          const BoxConstraints(maxWidth: 96.0, maxHeight: 96.0)});

  final Color color;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    var borderRadius = const BorderRadius.all(Radius.circular(20));

    return Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(color: color, borderRadius: borderRadius),
        constraints: constraints,
        child: ClipRRect(
            borderRadius: borderRadius, child: Image.asset('assets/test.png')));
  }
}
