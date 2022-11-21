import 'package:flutter/material.dart';

import 'cover.dart';

class Album extends StatelessWidget {
  const Album({super.key, required this.name});

  final String name;

  static const double padding = 10;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        const SizedBox(width: padding),
        const Cover(),
        const SizedBox(width: padding),
        Text(name, style: textTheme.headline4),
        const SizedBox(width: padding)
      ],
    );
  }
}
