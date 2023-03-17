import 'package:flutter/material.dart';

class JobFormScreen extends StatelessWidget {
  const JobFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JobFormScreen'),
      ),
      body: Column(
        children: [
          const Text('JobFormScreen'),
          ElevatedButton(onPressed: () {}, child: const Text('post your job')),
        ],
      ),
    );
  }
}
