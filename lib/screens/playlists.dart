import 'package:flutter/material.dart';

class Playlists extends StatelessWidget {
  const Playlists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playlists',
      home: Scaffold(
        appBar: AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, size: 35),
                onPressed: () {},
              ),
              title: const Text('Playlisty', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              centerTitle: true,
              actions: [
                IconButton(
                    icon: const Icon(Icons.add, size: 35),
                    onPressed: () {}
                )],
                 ),
        body: Padding(padding: const EdgeInsets.all(2),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.black,
                  ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network('https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg', height: 150, width: 150),
                  Image.network('https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg', height: 150, width: 150),
                  Image.network('https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg', height: 150, width: 150),
                ],)

            ),
            )
          )
           );

  }
}
