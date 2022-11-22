import 'package:flutter/material.dart';

class Playlists extends StatelessWidget {
  const Playlists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playlists',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(preferredSize: const Size.fromHeight(60),
            child: AppBar(
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
                 )
               ),
        body: Padding(padding: const EdgeInsets.fromLTRB(10, 7, 10, 7),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       IconButton(
                        icon: Image.network('https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                         iconSize: 150,
                         onPressed: () {},
                       ),
                       const Text('Playlista 1', style: TextStyle(color: Colors.white)),
                       IconButton(
                         icon: Image.network('https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                         iconSize: 150,
                         onPressed: () {},
                     ),
                       const Text('Playlista 2', style: TextStyle(color: Colors.white)),
                       IconButton(
                         icon: Image.network('https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                         iconSize: 150,
                         onPressed: () {},
                       ),
                       const Text('Playlista 3', style: TextStyle(color: Colors.white)),
                     ],),

                       Column(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                           IconButton(
                               icon: Image.network('https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                               iconSize: 150,
                               onPressed: () {},
                               ),
                          const Text('Playlista 1', style: TextStyle(color: Colors.white)),
                           IconButton(
                                icon: Image.network('https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                             iconSize: 150,
                             onPressed: () {},
                                  ),
                                const Text('Playlista 2', style: TextStyle(color: Colors.white)),
                           IconButton(
                              icon: Image.network('https://media.pitchfork.com/photos/5c1023aea32fbc2d77bb9a2e/1:1/w_600/icarus%20falls_zayn.jpg'),
                              iconSize: 150,
                                onPressed: () {},
                                ),
                              const Text('Playlista 3', style: TextStyle(color: Colors.white)),
                       ],)
                 ],
               )
        ),
       )
    );
  }
}
