import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:odtwarzacz/widgets/progressbarwrapper.dart';
import 'package:odtwarzacz/widgets/track.dart';
import 'package:odtwarzacz/screens/player.dart';

import 'cover.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key, required this.args, this.onTap});

  final PlayerArguments args;
  final void Function(BuildContext context, PlayerArguments args)? onTap;

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

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var name = widget.args.trackName;
    var author = widget.args.trackAuthor;
    var columnChildren = [
      Text(name, style: textTheme.headline4),
      Text(author, style: textTheme.subtitle2)
    ];

    return IntrinsicHeight(
      child: InkWell(
        onTap: () {
          widget.onTap?.call(
              context,
              PlayerArguments(
                  trackName: name,
                  trackAuthor: author,
                  shuffle: _shuffle,
                  repeatType: _repeatType,
                  play: _play,
                  progress: _progress));
        },
        child: Column(
          children: [
            Row(
              children: [
                const Cover(),
                const SizedBox(width: padding),
                IntrinsicHeight(
                  child: Column(
                    children: columnChildren,
                  ),
                ),
                const Spacer(),
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
      ),
    );
  }
}