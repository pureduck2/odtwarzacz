import 'package:flutter/material.dart';

class PlaylistShow extends StatelessWidget {
  const PlaylistShow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: PreferredSize(preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          backgroundColor: Colors.black,
            leading: IconButton(
               icon: const Icon(Icons.arrow_back, size: 35,),
               onPressed: () {},
            ),
            actions: [
                IconButton(
               icon: const Icon(Icons.add, size: 35,),
               onPressed: () {}
        )
          ],
      )
      )
    )
    );
  }
}
