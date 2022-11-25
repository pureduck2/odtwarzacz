import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  const CenteredText(this.data, {super.key, this.style});

  final String data;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Text(
          data,
          style: style,
        ));
  }
}
