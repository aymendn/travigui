import 'package:flutter/material.dart';

class BackButtons extends StatelessWidget {
  const BackButtons({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed ?? () => Navigator.pop(context),
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 25,
      ),
      label: const Text(
        'back',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}
