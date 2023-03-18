import 'package:flutter/material.dart';

import '../shared/custom_button.dart';

class BuyerActiveService extends StatelessWidget {
  const BuyerActiveService({
    required this.isConfirmed,
  });
  final bool isConfirmed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cutting some Harm Trees from jardin and Cleaning',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text('since'),
              SizedBox(
                width: 30,
              ),
              Text('21-03-2023'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          if (isConfirmed)
            CustomButton(
              onPressed: () {},
              text: 'As Finished',
              color: Color(0xffF56D38),
              isFullWidth: true,
            ),
          if (!isConfirmed) Text('40 Proposals'),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            onPressed: () {},
            text: 'Discard the Service',
            isFullWidth: true,
            color: Color(0xffF2F5F6),
            textColor: Color(0xff495057),
          )
        ],
      ),
    );
  }
}