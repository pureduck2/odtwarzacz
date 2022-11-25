import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:odtwarzacz/controllers/albums.dart';
import 'package:odtwarzacz/controllers/tracks.dart';
import 'package:odtwarzacz/widgets/track.dart';
import 'package:odtwarzacz/widgets/widetrack.dart';

import '../widgets/album.dart';

class PlaylistShow extends StatelessWidget {
  const PlaylistShow(
      {super.key,
      this.onTrackClick,
      this.onExit,
      required this.albumData});

  final void Function(BuildContext context, TrackData data)? onTrackClick;
  final void Function()? onExit;
  final AlbumData albumData;

  void _onTrackClick(BuildContext context, TrackData data) {
    onTrackClick?.call(context, data);
  }

  Image _getAlbumImage() {
    if (albumData.image != null) {
      return Image(image: albumData.image!.image, height: 200, width: 200);
    } else {
      return Image.asset(
        'assets/test.png',
        height: 200,
        width: 200,
      );
    }
  }

  List<Widget> _buildTracksInPlaylist() {
    AlbumsController albumsController = Get.find();
    TracksController tracksController = Get.find();

    List<TrackData> tracks = [];
    if (albumsController.isFavorites(albumData)) {
      tracks = tracksController.getFavorites();
    } else if (albumsController.isLastPlayed(albumData)) {
      tracks = tracksController.getByLastPlayed();
    } else {
      tracks =
          albumData.trackIds.map((id) => tracksController.getById(id)).toList();
    }

    List<Widget> widgets = [];

    for (var track in tracks) {
      widgets.add(WideTrack(data: track, onTap: _onTrackClick));
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverAppBar(
        pinned: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ),
          onPressed: () {
            onExit?.call();
          },
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.add,
                size: 25,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'PlaylistCreate');
              }),
        ],
      ),
      SliverToBoxAdapter(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.white10,
              Colors.white12,
              Colors.black12,
              Colors.black26,
              Colors.black38,
              Colors.black45,
              Colors.black54,
              Colors.black87,
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.teal,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 7, // Shadow position
                        ),
                      ],
                    ),
                    child: _getAlbumImage(),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    albumData.name,
                    style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.compare_arrows_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                  const SizedBox(
                    width: 2,
                  ),
                  IconButton(
                      icon: const Icon(
                        Icons.play_circle,
                        size: 55,
                        color: Colors.green,
                      ),
                      onPressed: () {}),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ..._buildTracksInPlaylist(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Ostatnio odtwarzane',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    splashRadius: 95,
                    icon: Container(
                        decoration: const BoxDecoration(
                          color: Colors.teal,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 4, // Shadow position
                            ),
                          ],
                        ),
                        child: Image.asset('assets/Cover-13v4-small.jpg')),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.pushNamed(context, 'PlaylistShow');
                    },
                  ),
                  IconButton(
                    splashRadius: 95,
                    icon: Container(
                        decoration: const BoxDecoration(
                          color: Colors.teal,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 4, // Shadow position
                            ),
                          ],
                        ),
                        child: Image.asset('assets/Cover-13v4-small.jpg')),
                    iconSize: 150,
                    onPressed: () {
                      Navigator.pushNamed(context, 'PlaylistShow');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      )
    ]);
  }
}
