import 'package:flutter/material.dart';

import 'cover.dart';

class Track extends StatelessWidget {
  const Track({super.key, required this.name, this.author});

  final String name;
  final String? author;

  static const double padding = 10;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var columnChildren = [Text(name, style: textTheme.headline4)];

    if (author != null) {
      columnChildren.add(Text(author!));
    }

    return Row(
      children: [
        const SizedBox(width: padding),
        const Cover(),
        const SizedBox(width: padding),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: columnChildren),
        const SizedBox(width: padding)
      ],
    );
  }
}
