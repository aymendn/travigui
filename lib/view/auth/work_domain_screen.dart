import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WorkDomainScreen extends ConsumerWidget {
  const WorkDomainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('WorkDomainScreen'),
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
