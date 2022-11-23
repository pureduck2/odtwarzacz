import 'dart:io';

import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover(
      {super.key,
      this.color = Colors.blue,
      this.constraints =
          const BoxConstraints(maxWidth: 64.0, maxHeight: 64.0)});

  final Color color;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        // decoration: BoxDecoration(color: color, borderRadius: borderRadius),
        constraints: constraints,
        child: Image.asset('assets/test.png'));
  }
}
