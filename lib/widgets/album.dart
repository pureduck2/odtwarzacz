import 'package:flutter/material.dart';

import 'cover.dart';

class AlbumData {
  final int? id;
  final String name;
  final Image? image;
  final bool? favorite;
  final DateTime? lastPlayed;
  final List<int> trackIds;

  const AlbumData(
      {this.id,
      required this.name,
      this.image,
      this.favorite,
      this.lastPlayed,
      this.trackIds = const []});
}

class Album extends StatelessWidget {
  const Album(
      {super.key,
      required this.data,
      this.onTap,
      this.constraints =
          const BoxConstraints(maxWidth: 128.0, maxHeight: 128.0)});

  final AlbumData data;
  final void Function(BuildContext context, AlbumData data)? onTap;
  final BoxConstraints constraints;

  static const double padding = 10;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var name = data.name;
    var image = data.image;

    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: InkWell(
        onTap: () {
          onTap?.call(context, data);
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
