import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 120,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: LinearProgressIndicator(
            minHeight: 5,
          ),
        ),
      ),
    );
  }
}
