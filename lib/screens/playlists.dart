import 'package:flutter/material.dart';
import '../widgets/album.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key, this.onAlbumClick});

  final void Function(BuildContext context, String albumName)? onAlbumClick;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return CustomScrollView
      (slivers: [
      SliverAppBar(
        pinned: true,
        title: const Text('Playlisty'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              icon: const Icon(Icons.add, size: 30),
              splashRadius: 25,
              onPressed: () {}
          )],
      ),
      SliverToBoxAdapter(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 20,),
                    Album(
                      image: Image.asset(
                          'heart.png'),
                      name: 'Ulubione',
                      constraints: const BoxConstraints(maxWidth: 140, maxHeight: 140),
                      onTap: onAlbumClick,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 20,),
                    Album(
                      image: Image.asset(
                          'assets/recent.png'),
                      name: 'Ostatnio odtwarzane',
                      constraints: const BoxConstraints(maxWidth: 140, maxHeight: 140),
                      onTap: onAlbumClick,
                    ),
                    ],
                )
              ],
            ),
            const SizedBox(height: 60,),
            Text('Pozostałe playlisty', style: textTheme.headline4),

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               const SizedBox(height: 15,),
             Album(
               image: Image.network(
                  'https://upload.wikimedia.org/wikipedia/en/2/23/Romance_%28Official_Album_Cover%29_by_Camila_Cabello.png'),
              name: 'Playlista 1',
              constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
              onTap: onAlbumClick,
            ),
               const SizedBox(height: 15,),
             Album(
               image: Image.network(
                  'https://upload.wikimedia.org/wikipedia/en/6/6a/Danna_Paola_KO_Cover.jpg'),
              name: 'Playlista 3',
              constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
              onTap: onAlbumClick,
            ),
               const SizedBox(height: 15,),
               Album(
                 image: Image.network(
                     'https://upload.wikimedia.org/wikipedia/en/6/6a/Danna_Paola_KO_Cover.jpg'),
                 name: 'Playlista 3',
                 constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                 onTap: onAlbumClick,
               ),
               const SizedBox(height: 15,),
               Album(
                 image: Image.network(
                     'https://upload.wikimedia.org/wikipedia/en/6/6a/Danna_Paola_KO_Cover.jpg'),
                 name: 'Playlista 3',
                 constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                 onTap: onAlbumClick,
               ),],
             ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: 15,),
                Album(
                  image: Image.network(
                      'https://ecsmedia.pl/c/16620154144304975-jpg-gallery.big-iext116924838.jpg'),
                  name: 'Playlista 2',
                  constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                  onTap: onAlbumClick,
                ),
                const SizedBox(height: 15,),
                Album(
                  image: Image.network(
                      'https://linkstorage.linkfire.com/medialinks/images/7262305f-c7b7-433c-b0f7-a8c5af658eab/artwork-440x440.jpg'),
                  name: 'Playlista 4',
                  constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                  onTap: onAlbumClick,
                ),
                const SizedBox(height: 15,),
                Album(
                  image: Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/6/6a/Danna_Paola_KO_Cover.jpg'),
                  name: 'Playlista 3',
                  constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                  onTap: onAlbumClick,
                ),
                const SizedBox(height: 15,),
                Album(
                  image: Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/6/6a/Danna_Paola_KO_Cover.jpg'),
                  name: 'Playlista 3',
                  constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                  onTap: onAlbumClick,
                ),],
            ),
    ]
    )
    ]
    )
    )
    ]
    );
  }
}
