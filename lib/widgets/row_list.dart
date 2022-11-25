import 'package:flutter/material.dart';
import 'package:quiver/iterables.dart';

class RowList extends StatelessWidget {
  const RowList(
      {super.key,
      required this.children,
      required this.rowCount,
      this.spacing = 30});

  final List<Widget> children;
  final int rowCount;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    var columns = partition(children, rowCount)
        .map((chunk) =>
            Wrap(direction: Axis.horizontal, spacing: spacing, children: chunk))
        .toList();

    return Wrap(
      direction: Axis.vertical,
      spacing: spacing,
      children: columns,
    );
  }
}
