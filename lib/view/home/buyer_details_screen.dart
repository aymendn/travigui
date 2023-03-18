import 'package:flutter/material.dart';

import '../shared/custom_button.dart';

class BuyerDetailsScreen extends StatelessWidget {
  const BuyerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
              CustomButton(
                text: 'Recruiter',
                onPressed: () {},
                color: Color(0xffF56D38),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 90,
          ),
          Text('Aymen Dennoub'),

        ]),
      ),
    );
  }
}
