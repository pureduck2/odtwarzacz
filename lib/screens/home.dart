import 'package:flutter/material.dart';
import 'package:odtwarzacz/widgets/cover.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var padding = 30.0;

    return Center(
        child: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        SizedBox(height: padding),
        Text('Szybki wybór', style: textTheme.headline1),
        SizedBox(height: padding),
        Text('Ostatnio odtwarzane', style: textTheme.headline2),
        SizedBox(height: padding),
        SizedBox(
            height: 150,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const GridTile(child: Cover());
              },
            )),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       SizedBox(
        //         width: padding,
        //       ),
        //       const Cover(),
        //       SizedBox(
        //         width: padding,
        //       ),
        //       const Cover(),
        //       SizedBox(
        //         width: padding,
        //       ),
        //       const Cover(),
        //       SizedBox(
        //         width: padding,
        //       ),
        //       const Cover(),
        //       SizedBox(
        //         width: padding,
        //       ),
        //     ],
        //   ),
        // ),
        SizedBox(height: padding),
        Text('Playlisty', style: textTheme.headline2),
        SizedBox(height: padding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: padding,
              ),
              const Cover(color: Colors.red),
              SizedBox(
                width: padding,
              ),
              const Cover(color: Colors.red),
              SizedBox(
                width: padding,
              ),
              const Cover(color: Colors.red),
              SizedBox(
                width: padding,
              ),
              const Cover(color: Colors.red),
              SizedBox(
                width: padding,
              ),
            ],
          ),
        ),
        SizedBox(height: padding)
      ],
    )));
  }
}
