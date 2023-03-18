import 'package:flutter/material.dart';

import '../shared/custom_button.dart';

class BuyerDetailsScreen extends StatelessWidget {
  const BuyerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          SizedBox(height: 10),
          Center(
            child: Text(
              'Aymen Dennoub',
              style: TextStyle(
                  color: Color(0xff212529),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                size: 15,
                color: Color(0xffADB5BD),
              ),
              Text(
                'Cheraga,Alger',
                style: const TextStyle(color: Color(0xffADB5BD), fontSize: 14),
              ),
            ],
          ),
          Divider(
            color: Color(0xffE9ECEF),
            thickness: 1,
          ),
          SizedBox(height: 10),
          Text(
            'About',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Hi, my name is Aymen and Im a student at ESTIN University. Im currently in my second year of studying psychology and Im really enjoying it so far. My goal is to become a licensed therapist and help people who are struggling with mental health issues.Outside of school, I enjoy spending time with my friends and family. I love hiking, reading, and trying new foods. I also volunteer at a local community center where I teach basic computer skills to senior citizens.',
            style: TextStyle(color: Color(0xffADB5BD)),
          ),
          SizedBox(height: 10),
          Text(
            'Main Services',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Jarden Carryier'),
          SizedBox(height: 10),
          Text(
            'Other Servives',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: const Color(0xffDEE2E6)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Text('Experience and knowledge of dog behavior'),
                const Divider(),
                Text('Experience and knowledge of dog behavior'),
                const Divider(),
                Text('Experience and knowledge of dog behavior'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reviews',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.star, color: Color(0xff1B5BFF)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 25,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lamine Mohamed'),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xff1B5BFF),
                        ),
                        Text(
                          '4.0',
                          style: TextStyle(color: Color(0xff1B5BFF)),
                        )
                      ],
                    ),
                    Text(
                      'I recently visited a local restaurant and was thoroughly impressed with my experience. The atmosphere was warm and inviting, and the staff was incredibly friendly and attentive',
                      style: TextStyle(color: Color(0xffADB5BD)),
                    )
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
