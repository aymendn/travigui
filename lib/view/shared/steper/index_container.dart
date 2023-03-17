import 'package:flutter/material.dart';

class indexContainer extends StatelessWidget {
  const indexContainer({
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
      child: Center(
          child: Text(index.toString(), style: TextStyle(color: Colors.white))),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
    );
  }
}