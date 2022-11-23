import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover(
      {super.key,
      this.color = Colors.blue,
      this.constraints = const BoxConstraints(maxWidth: 64.0, maxHeight: 64.0),
      this.image});

  final Color color;
  final BoxConstraints? constraints;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        // decoration: BoxDecoration(color: color, borderRadius: borderRadius),
        constraints: constraints,
        child: image ?? Image.asset('assets/test.png'));
  }
}
