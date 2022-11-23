import 'package:flutter/material.dart';
import '../widgets/album.dart';

class Playlists extends StatelessWidget {
  const Playlists({super.key, this.onAlbumClick});

  final void Function(BuildContext context, String albumName)? onAlbumClick;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return CustomScrollView(slivers: [
      SliverAppBar(
        pinned: true,
        title: const Text('Playlisty'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 25),
          splashRadius: 25,
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.add, size: 25),
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
                    const SizedBox(height: 15,),
                    const Text(
                      'Ulubione',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 10,),
                    Album(
                      image: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/9/9f/Midnights_-_Taylor_Swift.png'),
                      name: 'Playlista 1',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
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
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 3',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                    const SizedBox(height: 15,),
                    Album(
                      image: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/2/23/Romance_%28Official_Album_Cover%29_by_Camila_Cabello.png'),
                      name: 'Playlista 4',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: 15,),
                    const Text(
                      'Ostatnio odtwarzane',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 10,),
                    Album(
                      image: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/6/6a/Danna_Paola_KO_Cover.jpg'),
                      name: 'Playlista 1',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                    const SizedBox(height: 15,),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 2',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                    const SizedBox(height: 15,),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 3',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                    const SizedBox(height: 15,),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 4',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),],
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
                  'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
              name: 'Playlista 1',
              constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
              onTap: onAlbumClick,
            ),
               const SizedBox(height: 15,),
             Album(
               image: Image.network(
                  'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
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
                      'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                  name: 'Playlista 2',
                  constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                  onTap: onAlbumClick,
                ),
                const SizedBox(height: 15,),
                Album(
                  image: Image.network(
                      'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                  name: 'Playlista 4',
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

