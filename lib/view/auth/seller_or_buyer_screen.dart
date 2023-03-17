import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SellerOrBuyerScreen extends ConsumerWidget {
  const SellerOrBuyerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('SellerOrBuyerScreen'),
            FilledButton(
              onPressed: () {},
              child: const Text('next'),
            ),
          ],
        ),
      ),
    );
  }
}
