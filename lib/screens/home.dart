import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:odtwarzacz/controllers/albums.dart';
import 'package:odtwarzacz/controllers/tracks.dart';
import 'package:odtwarzacz/widgets/album.dart';
import 'package:odtwarzacz/widgets/column_list.dart';
import 'package:odtwarzacz/widgets/track.dart';
import 'package:odtwarzacz/widgets/centeredtext.dart';

class Home extends StatelessWidget {
  const Home({super.key, this.onTrackClick, this.onAlbumClick});

  final void Function(BuildContext context, TrackData trackData, AlbumData? albumData)? onTrackClick;
  final void Function(BuildContext context, AlbumData data)? onAlbumClick;

  void _onTrackClick(BuildContext context, TrackData trackData) {
    onTrackClick?.call(context, trackData, null);
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var padding = 30.0;

    AlbumsController albumsController = Get.find();
    TracksController tracksController = Get.find();

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
              children: albumsController
                  .getAll()
                  .map((data) => Album(data: data, onTap: onAlbumClick))
                  .toList(),
            )),
        SizedBox(height: padding),
        CenteredText('Ostatnio odtwarzane', style: textTheme.headline3),
        SizedBox(height: padding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ColumnList(
            columnCount: 2,
            children: tracksController
                .getByLastPlayed()
                .map((data) => Track(data: data, onTap: _onTrackClick))
                .toList(),
          ),
        ),
        SizedBox(height: padding)
      ],
    ));
  }
}
