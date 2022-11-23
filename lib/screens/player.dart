import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:odtwarzacz/widgets/progressbarwrapper.dart';

import '../widgets/cover.dart';

enum RepeatType {
  none,
  album,
  track;

  RepeatType next() {
    final nextIndex = (index + 1) % RepeatType.values.length;
    return RepeatType.values[nextIndex];
  }

  Icon icon() {
    switch (this) {
      case RepeatType.none:
      case RepeatType.album:
        return const Icon(Icons.repeat);
      case RepeatType.track:
        return const Icon(Icons.repeat_one);
    }
  }

  Color color() {
    switch (this) {
      case RepeatType.none:
        return Colors.grey;
      case RepeatType.album:
      case RepeatType.track:
        return Colors.white;
    }
  }
}

class PlayerArguments {
  String trackName;
  String trackAuthor;
  String? albumName;
  bool? shuffle;
  RepeatType? repeatType;
  bool? play;
  Duration? progress;

  PlayerArguments(
      {required this.trackName,
      required this.trackAuthor,
      this.albumName,
      this.shuffle,
      this.repeatType,
      this.play,
      this.progress});

  void updateWith(PlayerArguments args) {
    trackName = args.trackName;
    trackAuthor = args.trackAuthor;

    if (args.albumName != null) {
      albumName = args.albumName;
    }

    if (args.shuffle != null) {
      shuffle = args.shuffle;
    }

    if (args.repeatType != null) {
      repeatType = args.repeatType;
    }

    if (args.play != null) {
      play = args.play;
    }

    if (args.progress != null) {
      progress = args.progress;
    }
  }
}

class Player extends StatefulWidget {
  const Player({super.key, required this.args});

  final PlayerArguments args;

  @override
  PlayerState createState() => PlayerState();
}

class PlayerState extends State<Player> {
  bool _play = false;
  bool _shuffle = false;
  RepeatType _repeatType = RepeatType.none;
  bool _favorite = false;
  Duration _progress = Duration.zero;

  @override
  void initState() {
    final args = widget.args;
    _play = args.play ?? _play;
    _shuffle = args.shuffle ?? _shuffle;
    _repeatType = args.repeatType ?? _repeatType;
    _progress = args.progress ?? _progress;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var padding = 10.0;

    final args = widget.args;
    var trackName = args.trackName;
    var trackAuthor = args.trackAuthor;
    var albumName = args.albumName ?? trackName;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(albumName),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  PlayerArguments(
                      trackName: trackName,
                      trackAuthor: trackAuthor,
                      shuffle: _shuffle,
                      repeatType: _repeatType,
                      play: _play,
                      progress: _progress));
            },
            icon: const Icon(Icons.keyboard_arrow_down)),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Cover(constraints: null),
          SizedBox(height: padding),
          Text(trackName, style: textTheme.headline1),
          SizedBox(height: padding / 2),
          Text(trackAuthor, style: textTheme.subtitle1),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 4),
            child: ProgressBarWrapper(
              progress: _progress,
              total: const Duration(minutes: 4, seconds: 20),
              timeLabelLocation: TimeLabelLocation.sides,
              onSeek: (duration) => setState(() => _progress = duration),
              onDragUpdate: (details) =>
                  setState(() => _progress = details.timeStamp),
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
                icon: _favorite
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
                iconSize: 40,
                color: _favorite ? Colors.white : Colors.grey,
              ),
              IconButton(
                onPressed: () =>
                    setState(() => _repeatType = _repeatType.next()),
                icon: _repeatType.icon(),
                iconSize: 40,
                color: _repeatType.color(),
              )
            ],
          )
        ],
      )),
    );
  }
}
