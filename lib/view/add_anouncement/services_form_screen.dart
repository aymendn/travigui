import 'package:flutter/material.dart';

class ServiceFormScreen extends StatelessWidget {
  const ServiceFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JobFormScreen'),
      ),
      body: Column(
        children: [
          const Text('ServiceFormScreen'),
          ElevatedButton(
              onPressed: () {}, child: const Text('post your service')),
        ],
      ),
    );
  }
}
