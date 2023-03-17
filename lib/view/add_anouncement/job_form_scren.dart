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
          Text('JobFormScreen'),
          ElevatedButton(onPressed: (){}, child: Text('post your job')),
          
        ],
      ),
    );
  }
}