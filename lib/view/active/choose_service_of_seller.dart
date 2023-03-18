import 'package:flutter/material.dart';

class ChooseServiceOfSeller extends StatelessWidget {
  const ChooseServiceOfSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.red,
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mohamed Kadous',
                  style: TextStyle(
                      color: Color(0xff212529), fontWeight: FontWeight.bold)),
              Text(
                '65 Bids',
                style: TextStyle(color: Color(0xffF56D38)),
              ),
            ],
          ),
        ]),
        SizedBox(height: 20),
        Text(
            'I am writing to express my interest in the [Job Title] position that you have posted on Upwork. As a [relevant skill or experience], I believe I would be an excellent fit for this project.I understand that you are looking for [specific task or project requirements]. My experience in [relevant experience or skills] has prepared me well for this task. In my previous projects',
            style: TextStyle(color: Color(0xff495057))),
      ],
    );
  }
}
