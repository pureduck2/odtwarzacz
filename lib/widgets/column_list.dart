import 'package:flutter/material.dart';
import 'package:quiver/iterables.dart';

class ColumnList extends StatelessWidget {
  const ColumnList({super.key, required this.children, required this.columnCount});

  final List<Widget> children;
  final int columnCount;

  @override
  Widget build(BuildContext context) {
    var columns = partition(children, columnCount)
        .map((chunk) =>
            Wrap(direction: Axis.vertical, spacing: 10, children: chunk))
        .toList();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columns,
    );
  }
}
