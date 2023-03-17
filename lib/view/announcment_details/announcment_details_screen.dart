import 'package:flutter/material.dart';

class AnnouncmentDetailsScreen extends StatelessWidget {
  const AnnouncmentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnnouncmentDetailsScreen'),
      ),
      body: Column(
        children: [
          const Text('AnnouncmentDetailsScreen'),
          ElevatedButton(
              onPressed: () {},
              child: const Text('Dispose of the announcement'))
        ],
      ),
    );
  }
}
