import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:odtwarzacz/controllers/albums.dart';
import 'package:odtwarzacz/widgets/album.dart';
import 'package:odtwarzacz/widgets/column_list.dart';
import 'package:odtwarzacz/widgets/track.dart';

import '../widgets/centeredtext.dart';

class Home extends StatelessWidget {
  const Home({super.key, this.onTrackClick, this.onAlbumClick});

  final void Function(BuildContext context, TrackData data)? onTrackClick;
  final void Function(BuildContext context, AlbumData data)? onAlbumClick;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var padding = 30.0;

    AlbumsController c = Get.find();

    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: padding),
        CenteredText(
          'Szybki wybór',
          style: textTheme.headline2,
        ),
        SizedBox(height: padding),
        CenteredText('Playlisty', style: textTheme.headline3),
        SizedBox(height: padding),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ColumnList(
              columnCount: 1,
              children: c.getAll().map((data) => Album(name: data.name, image: data.image, onTap: onAlbumClick)).toList(),
            )),
        SizedBox(height: padding),
        CenteredText('Ostatnio odtwarzane', style: textTheme.headline3),
        SizedBox(height: padding),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ColumnList(
              columnCount: 2,
              children: List.generate(43, (index) {
                return Track(
                  data: TrackData(name: '$index', author: '$index'),
                  onTap: onTrackClick,
                );
              }),
            )),
        SizedBox(height: padding)
      ],
    ));
  }
}
