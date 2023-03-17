import 'package:flutter/material.dart';
class BackButtons extends StatelessWidget {
  const BackButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 35,
        ),
        label: Text(
          'back',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}