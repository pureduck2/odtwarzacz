import 'dart:io';

import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover({super.key, this.color = Colors.blue});

  final Color color;

  @override
  Widget build(BuildContext context) {
    var borderRadius = const BorderRadius.all(Radius.circular(20));

    return Expanded(
        child: Container(
            padding: EdgeInsets.all(6),
            decoration:
                BoxDecoration(color: color, borderRadius: borderRadius),
            child: ClipRRect(
                borderRadius: borderRadius,
                child: Image.asset('assets/test.png'))));
  }
}
