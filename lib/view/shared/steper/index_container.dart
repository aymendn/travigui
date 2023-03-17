import 'package:flutter/material.dart';

class IndexContainer extends StatelessWidget {
  const IndexContainer({
    super.key,
    required this.color,
    required this.index,
  });
  final Color color;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
      child: Center(
          child: Text(index.toString(),
              style: const TextStyle(color: Colors.white))),
    );
  }
}
