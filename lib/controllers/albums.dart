import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/album.dart';

class AlbumsController extends GetxController {
  static const favoritesId = -1;
  static const lastPlayedId = -2;

  late List<AlbumData> albums;
  late AlbumData favorites;
  late AlbumData lastPlayed;

  @override
  void onInit() {
    favorites = AlbumData(
        id: favoritesId, name: 'Ulubione', image: Image.asset('heart.png'));

    lastPlayed = AlbumData(
        id: lastPlayedId,
        name: 'Ostatnio odtwarzane',
        image: Image.asset('assets/recent.png'));

    albums = [
      AlbumData(
          id: 1,
          image: Image.network(
              'https://upload.wikimedia.org/wikipedia/en/9/9f/Midnights_-_Taylor_Swift.png'),
          name: 'Playlista 1',
          favorite: true,
          lastPlayed: DateTime.parse('2022-11-01'),
          trackIds: [1, 2]),
      AlbumData(
          id: 2,
          image: Image.network(
              'https://ecsmedia.pl/c/16620154144304975-jpg-gallery.big-iext116924838.jpg'),
          name: 'Playlista 2',
          favorite: true,
          lastPlayed: DateTime.parse('2022-11-02'),
          trackIds: [3, 4]),
      AlbumData(
          id: 3,
          image: Image.network(
              'https://upload.wikimedia.org/wikipedia/en/a/ac/Louis_Tomlinson_-_Walls.png'),
          name: 'Playlista 3',
          favorite: true,
          lastPlayed: DateTime.parse('2022-11-03'),
          trackIds: [5, 6]),
      AlbumData(
          id: 4,
          image: Image.network(
              'https://upload.wikimedia.org/wikipedia/en/2/23/Romance_%28Official_Album_Cover%29_by_Camila_Cabello.png'),
          name: 'Playlista 4',
          favorite: true,
          lastPlayed: DateTime.parse('2022-11-04'),
          trackIds: [7, 8]),
      AlbumData(
          id: 5,
          image: Image.network(
              'https://upload.wikimedia.org/wikipedia/en/6/6a/Danna_Paola_KO_Cover.jpg'),
          name: 'Playlista 5',
          favorite: false,
          lastPlayed: DateTime.parse('2022-11-24'),
          trackIds: [9, 10]),
      AlbumData(
          id: 6,
          image: Image.network(
              'https://linkstorage.linkfire.com/medialinks/images/7262305f-c7b7-433c-b0f7-a8c5af658eab/artwork-440x440.jpg'),
          name: 'Playlista 6',
          favorite: false,
          lastPlayed: DateTime.parse('2022-11-23'),
          trackIds: [11, 12]),
      AlbumData(
          id: 7,
          image: Image.network(
              'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
          name: 'Playlista 7',
          favorite: false,
          lastPlayed: DateTime.parse('2022-11-22'),
          trackIds: [13, 14]),
      AlbumData(
          id: 8,
          image: Image.network(
              'https://a.allegroimg.com/original/11f012/cc736e354e94b6837eaf383bc3f9/Dua-Lipa-Future-Nostalgia-The-Moonlight-Edition-CD'),
          name: 'Playlista 8',
          favorite: false,
          lastPlayed: DateTime.parse('2022-11-21'),
          trackIds: [15, 16]),
    ];
    super.onInit();
  }

  bool isFavorites(AlbumData data) {
    return data.id == favoritesId;
  }

  bool isLastPlayed(AlbumData data) {
    return data.id == lastPlayedId;
  }

  List<AlbumData> getAll() {
    return albums;
  }

  AlbumData getById(int id) {
    return albums.firstWhere((data) => data.id == id);
  }

  AlbumData getByName(String name) {
    return albums.firstWhere((data) => data.name == name);
  }

  List<AlbumData> getFavorites({int? count}) {
    count = count ?? albums.length;
    return albums.where((data) => data.favorite == true).take(count).toList();
  }

  List<AlbumData> getByLastPlayed({int? count}) {
    count = count ?? albums.length;
    var sorted = List<AlbumData>.from(albums);
    sorted.sort((a, b) => b.lastPlayed!.compareTo(a.lastPlayed!));
    return sorted.take(count).toList();
  }
}
