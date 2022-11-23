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
        title: Text('Playlisty'),
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
                    Text(
                      'Ulubione',
                      style: textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 1',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 1',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 1',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 1',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Ostatnio odtwarzane',
                      style: textTheme.headline4,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 1',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 1',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 1',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Album(
                      image: Image.network(
                          'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                      name: 'Playlista 1',
                      constraints: const BoxConstraints(maxWidth: 150, maxHeight: 150),
                      onTap: onAlbumClick,
                    ),
                  ],
                )
              ],
            ),

          ],
        ),
      ),
    ]);
  }
}
