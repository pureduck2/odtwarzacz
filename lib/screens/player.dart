import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/cover.dart';

class Player extends StatelessWidget {
  const Player({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('album'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.volume_up_sharp),
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Cover(constraints: null),
          Text('tytuł', style: textTheme.headline1),
          Text('autor', style: textTheme.subtitle1),
          const ProgressBar(
              progress: Duration(milliseconds: 1000),
              total: Duration(milliseconds: 5000),
            timeLabelLocation: TimeLabelLocation.sides,
            progressBarColor: Colors.white,
            baseBarColor: Colors.grey,
            thumbColor: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.skip_previous)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.play_circle)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.skip_next)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.shuffle)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.repeat))
            ],
          )
        ],
      )),
    );
  }
}
