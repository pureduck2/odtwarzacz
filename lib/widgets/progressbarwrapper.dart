import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class ProgressBarWrapper extends StatelessWidget {
  const ProgressBarWrapper(
      {super.key,
      required this.progress,
      required this.total,
      this.timeLabelLocation,
      this.barHeight = 5.0,
      this.thumbRadius = 10.0,
      this.onSeek,
      this.onDragUpdate});

  final Duration progress;
  final Duration total;
  final TimeLabelLocation? timeLabelLocation;
  final double barHeight;
  final double thumbRadius;
  final void Function(Duration)? onSeek;
  final void Function(ThumbDragDetails)? onDragUpdate;

  @override
  Widget build(BuildContext context) {
    return ProgressBar(
      progress: progress,
      total: total,
      timeLabelLocation: timeLabelLocation,
      barHeight: barHeight,
      thumbRadius: thumbRadius,
      onSeek: onSeek,
      onDragUpdate: onDragUpdate,

      progressBarColor: Colors.white,
      baseBarColor: Colors.grey,
      thumbColor: Colors.white,
    );
  }
}
