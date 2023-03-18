import 'package:flutter/material.dart';

import '../shared/custom_button.dart';

class SellerDetailsScreen extends StatelessWidget {
  const SellerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFD),
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
                child: const Center(child: Text('here image')),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Taking My dog On A Trip everyday for 2h',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite_border)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
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
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Job Description',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'The dog walker is responsible for taking clients dogs out for regular walks and ensuring that they receive adequate exercise, fresh air, and potty breaks. The job may also involve providing food and water to the dog as instructed by the owner, as well as cleaning up after the dog during and after the walk.',
                style: TextStyle(color: Color(0xffADB5BD)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Demanded Skills',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xffDEE2E6)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Container(
                      child: const Text(
                          'Experience and knowledge of dog behavior'),
                    ),
                    const Divider(),
                    Container(
                      child: const Text(
                          'Experience and knowledge of dog behavior'),
                    ),
                    const Divider(),
                    Container(
                      child: const Text(
                          'Experience and knowledge of dog behavior'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Published By',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
                child: Row(
                  children: const [
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
              const SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
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
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
