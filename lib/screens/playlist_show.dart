import 'package:flutter/material.dart';
import 'package:odtwarzacz/widgets/track.dart';
import 'package:odtwarzacz/widgets/widetrack.dart';

class PlaylistShow extends StatelessWidget {
  const PlaylistShow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              child: Image.asset(
                'assets/Cover-13v4-small.jpg',
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'NAZWA PLAYLISTY',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                icon: const Icon(
                  Icons.compare_arrows_rounded,
                  size: 45,
                  color: Colors.white,
                ),
                onPressed: () {}),
            const SizedBox(
              width: 10,
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
        const WideTrack(data: TrackData(name: 'makapaka', author: 'makapaka')),
        const SizedBox(height: 10),
        const WideTrack(data: TrackData(name: 'makapaka', author: 'makapaka')),
        const SizedBox(height: 10),
        const WideTrack(data: TrackData(name: 'makapaka', author: 'makapaka')),
        const SizedBox(height: 10),
        const WideTrack(data: TrackData(name: 'makapaka', author: 'makapaka')),
        const SizedBox(height: 10),
        const WideTrack(data: TrackData(name: 'makapaka', author: 'makapaka')),
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
    ));
  }
}
