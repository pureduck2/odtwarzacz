import 'package:flutter/material.dart';

import 'cover.dart';

class TrackData {
  final int? id;
  final String name;
  final String author;
  final String? albumName;
  final bool favorite;
  final DateTime? lastPlayed;

  const TrackData(
      {this.id,
      required this.name,
      required this.author,
      this.albumName,
      this.favorite = false,
      this.lastPlayed});

  TrackData copyWith(
      {int? id,
      String? name,
      String? author,
      String? albumName,
      bool? favorite,
      DateTime? lastPlayed}) {
    return TrackData(
        id: id ?? this.id,
        name: name ?? this.name,
        author: author ?? this.author,
        albumName: albumName ?? this.albumName,
        favorite: favorite ?? this.favorite,
        lastPlayed: lastPlayed ?? this.lastPlayed);
  }
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
    var columnChildren = [
      Text(name, style: textTheme.headline4),
      Text(author, style: textTheme.subtitle2)
    ];

    return InkWell(
      onTap: () {
        onTap?.call(context, TrackData(id: data.id, name: name, author: author));
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
