import 'package:flutter/material.dart';

import 'cover.dart';

class TrackData {
  final String name;
  final String author;
  final String? albumName;
  final bool favorite;
  final DateTime? lastPlayed;

  const TrackData({required this.name, required this.author, this.albumName, this.favorite = false, this.lastPlayed});
}

class Track extends StatelessWidget {
  const Track({super.key, required this.data, this.onTap});

  final TrackData data;
  final void Function(BuildContext context, TrackData data)? onTap;

  static const double padding = 10;

  @override
  Widget build(BuildContext context) {
    var name = data.name;
    var author = data.author;

    var textTheme = Theme.of(context).textTheme;
    var columnChildren = [Text(name, style: textTheme.headline4), Text(author, style: textTheme.subtitle2)];

    return InkWell(
      onTap: () {
        onTap?.call(context, TrackData(name: name, author: author));
      },
      child: Row(
        children: [
          const SizedBox(width: padding),
          const Cover(),
          const SizedBox(width: padding),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columnChildren),
          const SizedBox(width: padding)
        ],
      ),
    );
  }
}
