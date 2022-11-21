import 'package:flutter/material.dart';
import 'screens/directories.dart';
import 'screens/home.dart';
import 'screens/playlists.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Odtwarzacz',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: Colors.black)
          .copyWith(
              textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            headline3: TextStyle(fontSize: 20),
          ))
          .copyWith(
              bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
          )),
      themeMode: ThemeMode.dark,
      home: Scaffold(
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
      ),
    );
  }
}
