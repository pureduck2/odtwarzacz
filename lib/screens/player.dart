import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/cover.dart';

enum RepeatType {
  none,
  album,
  track
}

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  PlayerState createState() => PlayerState();
}

class PlayerState extends State<Player> {
  bool _play = false;
  bool _shuffle = false;
  RepeatType _repeatType = RepeatType.none;
  bool _favorite = false;
  Duration _progress = Duration.zero;

  void changeRepeatType() {
    setState(() {
      final nextIndex = (_repeatType.index + 1) % RepeatType.values.length;
      _repeatType = RepeatType.values[nextIndex];
    });
  }

  Icon repeatIcon() {
    switch (_repeatType) {
      case RepeatType.none:
        return const Icon(Icons.repeat);
      case RepeatType.album:
        return const Icon(Icons.repeat);
      case RepeatType.track:
        return const Icon(Icons.repeat_one);
    }
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var padding = 10.0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('album'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down)),
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
          SizedBox(height: padding),
          Text('tytuł', style: textTheme.headline1),
          SizedBox(height: padding / 2),
          Text('autor', style: textTheme.subtitle1),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 4),
            child: ProgressBar(
              progress: _progress,
              total: const Duration(minutes: 4, seconds: 20),
              timeLabelLocation: TimeLabelLocation.sides,
              progressBarColor: Colors.white,
              baseBarColor: Colors.grey,
              thumbColor: Colors.white,
              onSeek: (duration) => setState(() => _progress = duration),
              onDragUpdate: (details) => setState(() => _progress = details.timeStamp),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.skip_previous),
                iconSize: 48,
              ),
              IconButton(
                onPressed: () => setState(() => _play = !_play),
                icon: _play
                    ? const Icon(Icons.pause_circle)
                    : const Icon(Icons.play_circle),
                iconSize: 96,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.skip_next),
                iconSize: 48,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => setState(() => _shuffle = !_shuffle),
                icon: const Icon(Icons.shuffle),
                iconSize: 40,
                color: _shuffle ? Colors.white : Colors.grey,
              ),
              IconButton(
                onPressed: () => setState(() => _favorite = !_favorite),
                icon: _favorite ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border),
                iconSize: 40,
                color: _favorite ? Colors.white : Colors.grey,
              ),
              IconButton(
                onPressed: () => setState(() => changeRepeatType()),
                icon: repeatIcon(),
                iconSize: 40,
                color: _repeatType != RepeatType.none ? Colors.white : Colors.grey,
              )
            ],
          )
        ],
      )),
    );
  }
}
