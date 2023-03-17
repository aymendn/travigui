import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/core/app_exension.dart';
import '/core/app_route.dart';

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
          ElevatedButton(onPressed: () => context.push(AppRoute.chooseAnnouncement), child: Text("Add Annoncement")),

        ],
      ),
    );
  }
}
