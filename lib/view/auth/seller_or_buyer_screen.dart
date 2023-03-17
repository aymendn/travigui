import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../shared/back_button.dart';
import 'choose_role.dart';

class SellerOrBuyerScreen extends ConsumerWidget {
  const SellerOrBuyerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FA),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            BackButtons(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'First,  Do You Want To?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ChooseRole(
              text: "Find A Service",
              child: Icon(Icons.arrow_back),
            ),
            ChooseRole(
              text: "Get a Job/Service",
              child: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
