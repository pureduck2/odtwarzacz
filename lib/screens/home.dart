import 'package:flutter/material.dart';
import 'package:odtwarzacz/widgets/cover.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Center(
        child: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Szybki wybór', style: textTheme.headline1),
        SizedBox(height: 20),
        Text('Ostatnio odtwarzane', style: textTheme.headline2),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SizedBox(
              width: 20,
            ),
            Cover(),
            SizedBox(
              width: 20,
            ),
            Cover(),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SizedBox(
              width: 20,
            ),
            Cover(),
            SizedBox(
              width: 20,
            ),
            Cover(),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        SizedBox(height: 20),
        Text('Playlisty', style: textTheme.headline2),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SizedBox(
              width: 20,
            ),
            Cover(color: Colors.blue),
            SizedBox(
              width: 20,
            ),
            Cover(color: Colors.blue),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SizedBox(
              width: 20,
            ),
            Cover(color: Colors.blue),
            SizedBox(
              width: 20,
            ),
            Cover(color: Colors.blue),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ],
    )));
  }
}
