import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:odtwarzacz/controllers/albums.dart';
import 'package:odtwarzacz/controllers/tracks.dart';
import 'package:odtwarzacz/screens/player.dart';
import 'package:odtwarzacz/screens/playlist_show.dart';
import 'package:odtwarzacz/widgets/album.dart';
import 'package:odtwarzacz/widgets/miniplayer.dart';
import 'package:odtwarzacz/widgets/track.dart';

import 'screens/directories.dart';
import 'screens/home.dart';
import 'screens/playlists.dart';

enum Screen {
  home,
  playlists,
  playlistsShow,
  directories
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Odtwarzacz',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Colors.black)
          .copyWith(
              textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            headline3: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            headline4: TextStyle(fontSize: 20),
            subtitle1: TextStyle(fontSize: 20, color: Colors.grey),
                subtitle2: TextStyle(fontSize: 16, color: Colors.grey),
          ))
          .copyWith(
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
          )),
      themeMode: ThemeMode.dark,
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  MainState createState() => MainState();
}

class MainState extends State<Main> {
  int _index = 0;
  int? _lastIndex;
  Screen _screen = Screen.home;
  Screen? _lastScreen;
  PlayerArguments? _args;
  late AlbumData albumData;

  late AlbumsController _albumsController;
  late TracksController _tracksController;

  @override
  void initState() {
    _albumsController = Get.put(AlbumsController());
    _tracksController = Get.put(TracksController());
    super.initState();
  }

  void goBack() {
    setState(() {
      _screen = _lastScreen ?? Screen.home;
      _index = _lastIndex ?? 0;
    });
  }

  void onTrackClick(BuildContext context, TrackData data) {
    setState(() {
      _tracksController.updateLastPlayedByName(data.name, DateTime.now());

      if (_args == null) {
        _args = PlayerArguments(trackName: data.name, trackAuthor: data.author, albumName: data.albumName);
      } else {
        _args!.updateWith(PlayerArguments(trackName: data.name, trackAuthor: data.author, albumName: data.albumName));
      }
    });
  }

  void onAlbumClick(BuildContext context, AlbumData data) {
    setState(() {
      albumData = data;
      _lastIndex = _index;
      _lastScreen = _screen;
      _screen = Screen.playlistsShow;
      _index = 1;
    });
  }

  Widget _body() {
    switch (_screen) {
      case Screen.home:
        return Home(onTrackClick: onTrackClick, onAlbumClick: onAlbumClick);
      case Screen.playlists:
        return Playlists(onAlbumClick: onAlbumClick);
      case Screen.playlistsShow:
        return PlaylistShow(albumData: albumData, onTrackClick: onTrackClick, onExit: goBack);
      case Screen.directories:
        return const Directories();
      default:
        throw UnimplementedError();
    }
  }

  void _changeScreen(int index) {
    setState(() {
      _index = index;
      switch (_index) {
        case 0:
          _screen = Screen.home;
          break;
        case 1:
          _screen = Screen.playlists;
          break;
        case 2:
          _screen = Screen.directories;
          break;
      }
    });
  }

  BottomSheet? _buildBottomSheet() {
    if (_args == null) {
      return null;
    }

    var args = _args!;

    return BottomSheet(
      enableDrag: false,
      onClosing: () {},
      builder: (BuildContext context) {
        return MiniPlayer(args: args);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _body(),
      ),
      bottomSheet: _buildBottomSheet(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            setState(() => _changeScreen(index));
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'Główna'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined),
                activeIcon: Icon(Icons.library_music),
                label: 'Biblioteka'),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder_outlined),
                activeIcon: Icon(Icons.folder),
                label: 'Katalogi')
          ]),
    );
  }
}
