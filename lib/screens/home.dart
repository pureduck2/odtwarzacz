import 'package:flutter/material.dart';
import 'package:odtwarzacz/widgets/album.dart';
import 'package:odtwarzacz/widgets/cover.dart';
import 'package:odtwarzacz/widgets/column_list.dart';
import 'package:odtwarzacz/widgets/track.dart';

import '../widgets/centeredtext.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var padding = 30.0;

    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: padding),
        CenteredText(
          'Szybki wybór',
          style: textTheme.headline1,
        ),
        SizedBox(height: padding),
        CenteredText('Ostatnio odtwarzane', style: textTheme.headline2),
        SizedBox(height: padding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ColumnList(
            columnCount: 2,
            children: List.generate(43, (index) {
              return Track(name: '$index', author: '$index',);
            }),
          )
        ),
        SizedBox(height: padding),
        CenteredText('Playlisty', style: textTheme.headline2),
        SizedBox(height: padding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ColumnList(
            columnCount: 1,
            children: List.generate(43, (index) {
              return Album(name: '$index');
            }),
          )
        ),
        SizedBox(height: padding)
      ],
    ));
  }
}
