import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/album.dart';

class AlbumsController extends GetxController {
  late List<AlbumData> albums;

  @override
  void onInit() {
    albums = [
      AlbumData(
          image: Image.network(
              'https://upload.wikimedia.org/wikipedia/en/9/9f/Midnights_-_Taylor_Swift.png'),
          name: 'Playlista 1',
          favorite: true,
          lastPlayed: DateTime.parse('2022-11-01')),
      AlbumData(
          image: Image.network(
              'https://ecsmedia.pl/c/16620154144304975-jpg-gallery.big-iext116924838.jpg'),
          name: 'Playlista 2',
          favorite: true,
          lastPlayed: DateTime.parse('2022-11-02')),
      AlbumData(
          image: Image.network(
              'https://upload.wikimedia.org/wikipedia/en/a/ac/Louis_Tomlinson_-_Walls.png'),
          name: 'Playlista 3',
          favorite: true,
          lastPlayed: DateTime.parse('2022-11-03')),
      AlbumData(
          image: Image.network(
              'https://upload.wikimedia.org/wikipedia/en/2/23/Romance_%28Official_Album_Cover%29_by_Camila_Cabello.png'),
          name: 'Playlista 4',
          favorite: true,
          lastPlayed: DateTime.parse('2022-11-04')),
      AlbumData(
          image: Image.network(
              'https://upload.wikimedia.org/wikipedia/en/6/6a/Danna_Paola_KO_Cover.jpg'),
          name: 'Playlista 5',
          favorite: false,
          lastPlayed: DateTime.parse('2022-11-24')),
      AlbumData(
          image: Image.network(
              'https://linkstorage.linkfire.com/medialinks/images/7262305f-c7b7-433c-b0f7-a8c5af658eab/artwork-440x440.jpg'),
          name: 'Playlista 6',
          favorite: false,
          lastPlayed: DateTime.parse('2022-11-23')),
      AlbumData(
          image: Image.network(
              'https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
          name: 'Playlista 7',
          favorite: false,
          lastPlayed: DateTime.parse('2022-11-22')),
      AlbumData(
          image: Image.network(
              'https://a.allegroimg.com/original/11f012/cc736e354e94b6837eaf383bc3f9/Dua-Lipa-Future-Nostalgia-The-Moonlight-Edition-CD'),
          name: 'Playlista 8',
          favorite: false,
          lastPlayed: DateTime.parse('2022-11-21')),
    ];
    super.onInit();
  }

  List<AlbumData> getAll() {
    return albums;
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
