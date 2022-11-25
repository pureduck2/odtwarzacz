import 'package:animations/animations.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:odtwarzacz/controllers/albums.dart';
import 'package:odtwarzacz/controllers/tracks.dart';
import 'package:odtwarzacz/widgets/progressbarwrapper.dart';
import 'package:odtwarzacz/screens/player.dart';
import 'package:odtwarzacz/widgets/cover.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key, required this.args, this.onTrackClick});

  final PlayerArguments args;
  final void Function(
          BuildContext context, TrackData trackData, AlbumData? albumData)?
      onTrackClick;

  @override
  MiniPlayerState createState() => MiniPlayerState();
}

class MiniPlayerState extends State<MiniPlayer> {
  static const double padding = 10;
  static const double iconSize = 32;

  bool _shuffle = false;
  RepeatType _repeatType = RepeatType.none;
  bool _play = false;
  Duration _progress = Duration.zero;

  void _update(PlayerArguments? args) {
    if (args != null) {
      _shuffle = args.shuffle!;
      _repeatType = args.repeatType!;
      _play = args.play!;
      _progress = args.progress!;
    }
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var name = widget.args.trackData.name;
    var author = widget.args.trackData.author;
    var columnChildren = [
      Text(name,
          style: textTheme.headline4,
          overflow: TextOverflow.fade,
          softWrap: false,
          maxLines: 1),
      Text(author,
          style: textTheme.subtitle2,
          overflow: TextOverflow.fade,
          softWrap: false,
          maxLines: 1)
    ];

    return OpenContainer<PlayerArguments>(
      closedColor: Colors.transparent,
      closedBuilder: (BuildContext context, VoidCallback _) {
        return IntrinsicHeight(
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Cover(
                        constraints:
                            BoxConstraints(maxWidth: 48, maxHeight: 48)),
                  ),
                  const SizedBox(width: padding),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: columnChildren,
                    ),
                  ),
                  IconButton(
                    onPressed: () => setState(() => _shuffle = !_shuffle),
                    icon: const Icon(Icons.shuffle),
                    iconSize: iconSize,
                    color: _shuffle ? Colors.white : Colors.grey,
                  ),
                  IconButton(
                      onPressed: () =>
                          setState(() => _repeatType = _repeatType.next()),
                      icon: _repeatType.icon(),
                      iconSize: iconSize,
                      color: _repeatType.color()),
                  IconButton(
                    onPressed: () => setState(() => _play = !_play),
                    icon: _play
                        ? const Icon(Icons.pause)
                        : const Icon(Icons.play_arrow),
                    iconSize: iconSize,
                  ),
                ],
              ),
              ProgressBarWrapper(
                progress: _progress,
                total: const Duration(minutes: 4, seconds: 20),
                timeLabelLocation: TimeLabelLocation.none,
                barHeight: 4.0,
                thumbRadius: 0.0,
              )
            ],
          ),
        );
      },
      openBuilder: (BuildContext context, VoidCallback _) {
        return Player(
            args: PlayerArguments(
                trackData: widget.args.trackData,
                albumData: widget.args.albumData,
                shuffle: _shuffle,
                repeatType: _repeatType,
                play: _play,
                progress: _progress),
            onTrackClick: widget.onTrackClick);
      },
      onClosed: _update,
    );
  }
}
