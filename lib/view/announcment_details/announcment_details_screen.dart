import 'package:flutter/material.dart';

class AnnouncmentDetailsScreen extends StatelessWidget {
  const AnnouncmentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('AnnouncmentDetailsScreen'),
      ),
      body: Column(
        children: [
          Text('AnnouncmentDetailsScreen'),
          ElevatedButton(onPressed: (){}, child: Text('Dispose of the announcement'))
        ],
      ),
    );
  }
}
