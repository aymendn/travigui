import 'package:flutter/material.dart';

import '../shared/custom_button.dart';

class BuyerScreenDetails extends StatelessWidget {
  const BuyerScreenDetails({super.key});

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
                color: const Color(0xffF56D38),
              )
            ],
          )
        ]),
      ),
    );
  }
}
