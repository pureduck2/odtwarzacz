import 'package:flutter/material.dart';

import 'cover.dart';

class Album extends StatelessWidget {
  const Album({super.key, required this.name});

  final String name;

  static const double padding = 10;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          const Cover(constraints: BoxConstraints(maxWidth: 128.0, maxHeight: 128.0)),
          const SizedBox(height: padding),
          Text(name, style: textTheme.headline4),
        ],
      ),
    );
  }
}
