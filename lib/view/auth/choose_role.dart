import 'package:flutter/material.dart';
class ChooseRole extends StatelessWidget {
  const ChooseRole({
    required this.child,
    required this.text,
  });

  final Widget child;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffF2F5F6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
          Text(text),
          CircleAvatar(
            backgroundColor: Color(0xffF2F5F6),
            child: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
        ],
      ),
    );
  }
}