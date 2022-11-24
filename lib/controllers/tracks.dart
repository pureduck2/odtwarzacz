import 'package:get/get.dart';

import '../widgets/track.dart';

class TracksController extends GetxController {
  late List<TrackData> tracks;

  @override
  void onInit() {
    tracks = List.generate(
        43,
        (index) => TrackData(
            id: index, name: '$index', author: '$index', lastPlayed: DateTime.now()));
    super.onInit();
  }

  void setFavoriteByName(String name, bool favorite) {
    var index = tracks.indexWhere((data) => data.name == name);
    var track = tracks[index];
    tracks[index] = track.copyWith(favorite: favorite);
  }

  TrackData getById(int id) {
    return tracks.firstWhere((data) => data.id == id);
  }

  TrackData getByName(String name) {
    return tracks.firstWhere((data) => data.name == name);
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
