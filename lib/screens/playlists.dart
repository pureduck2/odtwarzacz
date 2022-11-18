import 'package:flutter/material.dart';

class Playlists extends StatelessWidget {
  const Playlists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playlists',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(preferredSize: const Size.fromHeight(65.0),
         child: AppBar(
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
        )
          ),
      );
  }
}
