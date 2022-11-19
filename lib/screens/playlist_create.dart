import 'package:flutter/material.dart';

class PlaylistCreate extends StatelessWidget {
  const PlaylistCreate ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: PreferredSize(preferredSize: const Size.fromHeight(65.0),
                child: AppBar(
                  backgroundColor: Colors.black,
                  centerTitle: true,
                  title: const Text(
                    'Tworzenie playlisty',
                  ),
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back, size: 35,),
                    onPressed: () {},
                  ),
                )
            )
        )
    );
  }
}
