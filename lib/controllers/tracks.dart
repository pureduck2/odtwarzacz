import 'package:get/get.dart';

import '../widgets/track.dart';

class TracksController extends GetxController {
  late List<TrackData> tracks;

  @override
  void onInit() {
    tracks = List.generate(
        43,
        (index) => TrackData(
            name: '$index', author: '$index', lastPlayed: DateTime.now()));
    super.onInit();
  }

  List<TrackData> getAll() {
    return tracks;
  }

  List<TrackData> getFavorites({int? count}) {
    count = count ?? tracks.length;
    return tracks.where((data) => data.favorite == true).take(count).toList();
  }

  List<TrackData> getByLastPlayed({int? count}) {
    count = count ?? tracks.length;
    var sorted = List<TrackData>.from(tracks);
    sorted.sort((a, b) => b.lastPlayed!.compareTo(a.lastPlayed!));
    return sorted.take(count).toList();
  }
}
