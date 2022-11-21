import 'package:flutter/material.dart';
import 'package:odtwarzacz/widgets/cover.dart';

class Directories extends StatelessWidget {
  const Directories({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Center(child: Text('Katalogi'));
    var textTheme = Theme.of(context).textTheme;
    return Center(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Katalogi', style: textTheme.headline1),
                SizedBox(height: 20),
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

                  ],
                ),
            ));

  }
}
