import 'package:flutter/material.dart';

import '../shared/custom_button.dart';
import 'buyer_active_service.dart';

class BuyerActiveServiceScreen extends StatelessWidget {
  const BuyerActiveServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
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
              BuyerActiveService(isConfirmed: true),
              BuyerActiveService(isConfirmed: false),
            ],
          ),
        ),
      ),
    );
  }
}


