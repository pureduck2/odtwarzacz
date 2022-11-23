import 'package:flutter/material.dart';

class PlaylistCreate extends StatefulWidget {
  const PlaylistCreate ({super.key});

  @override
  State<PlaylistCreate> createState() => _PlaylistCreateState();
}

class _PlaylistCreateState extends State<PlaylistCreate> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: const Text(
                'Tworzenie playlisty',
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, size: 25,),
                onPressed: () {},
              ),
            ), body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: 'Nazwa',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 3, color: Colors.white
                    ),
                  ),
          ),
                style: const TextStyle(
                  color: Colors.white,
                ),
        ),
            ],
          ),
        ),
        ),
    );
  }
}
