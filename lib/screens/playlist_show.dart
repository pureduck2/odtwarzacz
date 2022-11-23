import 'package:flutter/material.dart';
import 'package:odtwarzacz/widgets/track.dart';
import 'package:odtwarzacz/widgets/widetrack.dart';

class PlaylistShow extends StatelessWidget {
  const PlaylistShow({super.key, this.onTrackClick});

  final void Function(BuildContext context, TrackData data)? onTrackClick;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(

        slivers: [SliverAppBar(
          pinned: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, size: 25,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.add, size: 25,),
                onPressed: () {
                  Navigator.pushNamed(context,'PlaylistCreate');
                }
            ),],
        ),SliverToBoxAdapter(
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
          WideTrack(data: const TrackData(name: 'kuchenne', author: 'Korwin Mikke'), onTap: onTrackClick),
          const SizedBox(height: 10),
          WideTrack(data: const TrackData(name: 'makapaka', author: 'makapaka'), onTap: onTrackClick),
          const SizedBox(height: 10),
          WideTrack(data: const TrackData(name: 'makapaka', author: 'makapaka'), onTap: onTrackClick),
          const SizedBox(height: 10),
          WideTrack(data: const TrackData(name: 'makapaka', author: 'makapaka'), onTap: onTrackClick),
          const SizedBox(height: 10),
          WideTrack(data: const TrackData(name: 'makapaka', author: 'makapaka'), onTap: onTrackClick),
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
        )]);
  }
}
