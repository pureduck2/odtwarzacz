import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:odtwarzacz/widgets/row_list.dart';
import '../controllers/albums.dart';
import '../widgets/album.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key, this.onAlbumClick});

  final void Function(BuildContext context, AlbumData data)? onAlbumClick;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    AlbumsController albumsController = Get.find();

    return CustomScrollView(slivers: [
      SliverAppBar(
        pinned: true,
        title: const Text('Playlisty'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              icon: const Icon(Icons.add, size: 30),
              splashRadius: 25,
              onPressed: () {})
        ],
      ),
      SliverToBoxAdapter(
          child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Album(
                  data: albumsController.favorites,
                  constraints:
                      const BoxConstraints(maxWidth: 140, maxHeight: 140),
                  onTap: onAlbumClick,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Album(
                  data: albumsController.lastPlayed,
                  constraints:
                      const BoxConstraints(maxWidth: 140, maxHeight: 140),
                  onTap: onAlbumClick,
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 60,
        ),
        Text('Pozostałe playlisty', style: textTheme.headline4),
        const SizedBox(
          height: 30,
        ),
        RowList(
          rowCount: 2,
          children: albumsController
              .getAll()
              .map((data) => Album(data: data, onTap: onAlbumClick))
              .toList(),
        )
      ]))
    ]);
  }
}
