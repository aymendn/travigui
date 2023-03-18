import 'package:flutter/material.dart';

import '../shared/custom_button.dart';
import 'seller_active_sceen.dart';

class SellerActiveServiceScreen extends StatelessWidget {
  const SellerActiveServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Active Services',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            SellerActiveService()
          ],
        )),
      ),
    );
  }
}


