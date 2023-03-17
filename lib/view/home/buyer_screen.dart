import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BuyerScreen extends ConsumerWidget {
  const BuyerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('buyer'),
      ),
    body: Column(
        children: [
          Text('home screen of buyer'),
          ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/choose-announcement'), child: Text("Add Annoncement")),

        ],
      ),
    );
  }
}
