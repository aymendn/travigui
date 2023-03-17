import 'package:flutter/material.dart';
class ChooseAnoncementScreen extends StatelessWidget {
  const ChooseAnoncementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChooseAnoncementScreen'),
      ),
      body: Column(
        children: [
          Text('ChooseAnoncementScreen'),
          ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/service-form'), child: Text('service')),
          ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/job-form') , child: Text('job')),
          
        ],
      ),
    );
  }
}