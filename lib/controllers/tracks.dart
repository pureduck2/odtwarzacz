import 'package:get/get.dart';

class TrackData {
  final int id;
  final String name;
  final String author;
  final String? albumName;
  final bool favorite;
  final DateTime? lastPlayed;

  const TrackData(
      {required this.id,
      required this.name,
      required this.author,
      this.albumName,
      this.favorite = false,
      this.lastPlayed});

  TrackData copyWith(
      {int? id,
      String? name,
      String? author,
      String? albumName,
      bool? favorite,
      DateTime? lastPlayed}) {
    return TrackData(
        id: id ?? this.id,
        name: name ?? this.name,
        author: author ?? this.author,
        albumName: albumName ?? this.albumName,
        favorite: favorite ?? this.favorite,
        lastPlayed: lastPlayed ?? this.lastPlayed);
  }
}

class TracksController extends GetxController {
  late List<TrackData> tracks;

  @override
  void onInit() {
    tracks = List.generate(
        43,
        (index) => TrackData(
            id: index,
            name: '$index',
            author: '$index',
            lastPlayed: DateTime.now()));
    super.onInit();
  }

  void setFavoriteByName(String name, bool favorite) {
    var index = tracks.indexWhere((data) => data.name == name);
    var track = tracks[index];
    tracks[index] = track.copyWith(favorite: favorite);
  }

  void updateLastPlayedByName(String name, DateTime lastPlayed) {
    var index = tracks.indexWhere((data) => data.name == name);
    var track = tracks[index];
    tracks[index] = track.copyWith(lastPlayed: lastPlayed);
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
