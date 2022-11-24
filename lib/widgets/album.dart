import 'package:flutter/material.dart';

import 'cover.dart';

class AlbumData {
  final String name;
  final Image? image;

  const AlbumData({required this.name, this.image});
}

class Album extends StatelessWidget {
  const Album(
      {super.key,
      required this.name,
      this.onTap,
      this.constraints =
          const BoxConstraints(maxWidth: 128.0, maxHeight: 128.0),
      this.image});

  final String name;
  final void Function(BuildContext context, AlbumData data)? onTap;
  final BoxConstraints constraints;
  final Image? image;

  static const double padding = 10;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: InkWell(
        onTap: () {
          onTap?.call(context, AlbumData(name: name, image: image));
        },
        child: Column(
          children: [
            Cover(constraints: constraints, image: image),
            Text(name, style: textTheme.headline4),
          ],
        ),
      ),
    );
  }
}
