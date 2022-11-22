import 'package:flutter/material.dart';
import 'package:odtwarzacz/screens/player.dart';

import 'screens/directories.dart';
import 'screens/home.dart';
import 'screens/playlists.dart';

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
          ))
          .copyWith(
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.white,
          )),
      themeMode: ThemeMode.dark,
      initialRoute: '/player',
      routes: {
        '/': (context) => const Main(),
        '/player': (context) => const Player(),
      },
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

  Widget _body() {
    switch (_index) {
      case 0:
        return const Home();
      case 1:
        return const Playlists();
      case 2:
        return const Directories();
      default:
        throw UnimplementedError();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _body(),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            setState(() => _index = index);
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
