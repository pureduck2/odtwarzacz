import 'package:flutter/material.dart';
import 'package:odtwarzacz/widgets/track.dart';

import 'cover.dart';

class WideTrack extends StatelessWidget {
  const WideTrack({super.key, required this.data, this.onTap});

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SizedBox(width: padding),
              const Cover(),
              const SizedBox(width: padding),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: columnChildren),
            ],
          ),
          IconButton(
              icon: const Icon(
                Icons.more_vert_rounded,
                size: 25,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
