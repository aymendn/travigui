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
          Text('ServiceFormScreen'),
          ElevatedButton(onPressed: (){}, child: Text('post your service')),
          
        ],
      ),
    );
  }
}