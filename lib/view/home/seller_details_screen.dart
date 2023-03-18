import 'package:flutter/material.dart';

import '../shared/custom_button.dart';

class SellerDetailsScreen extends StatelessWidget {
  const SellerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                height: 300,
                child: Center(child: Text('here image')),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Taking My dog On A Trip everyday for 2h',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite_border)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xffADB5BD),
                  ),
                  Text(
                    'Cheraga,Alger',
                    style: TextStyle(color: Color(0xffADB5BD)),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Job Description',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'The dog walker is responsible for taking clients dogs out for regular walks and ensuring that they receive adequate exercise, fresh air, and potty breaks. The job may also involve providing food and water to the dog as instructed by the owner, as well as cleaning up after the dog during and after the walk.',
                style: TextStyle(color: Color(0xffADB5BD)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Demanded Skills',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xffDEE2E6)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      child: Text('Experience and knowledge of dog behavior'),
                    ),
                    Divider(),
                    Container(
                      child: Text('Experience and knowledge of dog behavior'),
                    ),
                    Divider(),
                    Container(
                      child: Text('Experience and knowledge of dog behavior'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Published By',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Mohamed kadous',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff343A40),
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '56 bids Rest',
                          style: TextStyle(color: Color(0xff1B5BFF)),
                        ),
                        Text(
                          '10,000 Da/Mo',
                          style: TextStyle(
                              color: Color(0xff495057),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    CustomButton(
                      text: 'Postulet',
                      isFullWidth: false,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
