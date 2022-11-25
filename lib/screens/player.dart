import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:odtwarzacz/controllers/albums.dart';
import 'package:odtwarzacz/widgets/progressbarwrapper.dart';
import 'package:odtwarzacz/controllers/tracks.dart';
import 'package:odtwarzacz/widgets/cover.dart';

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
  TrackData trackData;
  AlbumData? albumData;
  bool? shuffle;
  RepeatType? repeatType;
  bool? play;
  Duration? progress;

  PlayerArguments(
      {required this.trackData,
      this.albumData,
      this.shuffle,
      this.repeatType,
      this.play,
      this.progress});

  void updateWith(PlayerArguments args) {
    trackData = args.trackData;

    if (args.albumData != null) {
      albumData = args.albumData;
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
  const Player({super.key, required this.args, this.onTrackClick});

  final PlayerArguments args;
  final void Function(
          BuildContext context, TrackData trackData, AlbumData? albumData)?
      onTrackClick;

  @override
  PlayerState createState() => PlayerState();
}

class PlayerState extends State<Player> {
  late PlayerArguments _args;
  bool _play = false;
  bool _shuffle = false;
  RepeatType _repeatType = RepeatType.none;
  Duration _progress = Duration.zero;
  late TracksController _tracksController;

  void _toggleFavorite() {
    var name = widget.args.trackData.name;
    bool favorite = _tracksController.getByName(name).favorite;
    _tracksController.setFavoriteByName(name, !favorite);
  }

  void _previousTrack(BuildContext context, List<int> previousTracks) {
    _progress = Duration.zero;
    TrackData track = _tracksController.getById(previousTracks.last);
    widget.onTrackClick?.call(context, track, _args.albumData);
    setState(() {
      _args = PlayerArguments(trackData: track, albumData: _args.albumData);
    });
  }

  void _nextTrack(BuildContext context, List<int> nextTracks) {
    _progress = Duration.zero;
    TrackData track = _tracksController.getById(nextTracks[0]);
    widget.onTrackClick?.call(context, track, _args.albumData);
    setState(() {
      _args = PlayerArguments(trackData: track, albumData: _args.albumData);
    });
  }

  @override
  void initState() {
    final args = widget.args;
    _args = args;
    _play = args.play ?? _play;
    _shuffle = args.shuffle ?? _shuffle;
    _repeatType = args.repeatType ?? _repeatType;
    _progress = args.progress ?? _progress;
    _tracksController = Get.find();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var padding = 10.0;

    final trackData = _args.trackData;
    final albumData = _args.albumData;

    var albumName = albumData?.name ?? trackData.name;

    bool favorite = _tracksController.getByName(trackData.name).favorite;

    var index = albumData!.trackIds.indexWhere((id) => id == trackData.id);
    var previousTracks = albumData?.trackIds.sublist(0, index) ?? [];
    var nextTracks = albumData?.trackIds.sublist(index + 1) ?? [];

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
                      trackData: widget.args.trackData,
                      albumData: widget.args.albumData,
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
          Text(trackData.name, style: textTheme.headline1),
          SizedBox(height: padding / 2),
          Text(trackData.author, style: textTheme.subtitle1),
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
                onPressed: previousTracks.isNotEmpty
                    ? () {
                        _previousTrack(context, previousTracks);
                      }
                    : null,
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
                onPressed: nextTracks.isNotEmpty
                    ? () {
                        _nextTrack(context, nextTracks);
                      }
                    : null,
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
                onPressed: () => setState(() => _toggleFavorite()),
                icon: favorite
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
                iconSize: 40,
                color: favorite ? Colors.white : Colors.grey,
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
