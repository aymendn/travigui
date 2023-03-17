import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SellerScreen extends ConsumerWidget {
  const SellerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('seller'),
      ),
      body: Column(
        children: [
          const Text('home screen of seller'),
          Row(
            children: [
              const Text('seller'),
              ElevatedButton(
                onPressed: () {
                  // context.push(AppRoute.announcmentDetails);
                  Navigator.pushNamed(context, '/announcment-details');
                },
                child: const Text('check'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
