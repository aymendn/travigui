import 'package:flutter/material.dart';

import '../shared/custom_button.dart';
import 'choose_service_of_seller.dart';

class ChooseServiceOfSellerScreen extends StatelessWidget {
  const ChooseServiceOfSellerScreen({super.key});

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
              'Cutting some Harm Trees from jardin and Cleaning',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Since'),
                SizedBox(width: 30),
                Text(
                  '21-03-2023',
                  style: TextStyle(
                      color: Color(0xff495057), fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Discard the Service',
              onPressed: () {},
              color: Color(0xffF2F5F6),
              textColor: Color(0xff495057),
              isFullWidth: true,
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Color(0xffF2F5F6),
            ),
            SizedBox(
              height: 20,
            ),
            ChooseServiceOfSeller(),
            SizedBox(height: 30),
            Text('Price: 18,000DA'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  text: 'Reject',
                  onPressed: () {},
                  color: Color(0xffF2F5F6),
                  textColor: Color(0xff495057),
                  isFullWidth: false,
                ),
                CustomButton(
                  text: 'Accept',
                  onPressed: () {},
                  color: Color(0xffF56D38),
                  isFullWidth: false,
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
