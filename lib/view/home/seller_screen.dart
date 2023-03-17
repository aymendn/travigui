import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        children:  [
           Text('home screen of seller'),
           Row(children: [
            Text('seller'),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context,'/announcement-details'), child: Text('check'))
           ],)
         
        ],
      ),
    );
  }
}