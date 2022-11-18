import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playlist',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
         leading: IconButton(
           icon: const Icon(Icons.arrow_back, size: 35),
            onPressed: () {},
         ),
           title: const Text('Playlisty', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.add, size: 35),
                onPressed: () {}
              )
            ],

          )
          ),
      );
  }
}