import 'package:flutter/material.dart';

import '../../core/app_color.dart';
import '../../core/app_exension.dart';
import '../../core/app_route.dart';
import '../shared/custom_button.dart';

class BuyerDetailsScreen extends StatelessWidget {
  const BuyerDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: context.pop,
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                CustomButton(
                  text: 'Recruiter',
                  onPressed: () {
                    context.push(AppRoute.recruter);
                  },
                  color: AppColor.secondary,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const CircleAvatar(
              backgroundColor: AppColor.secondary,
              radius: 70,
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Aymen Dennoub',
                style: TextStyle(
                  color: Color(0xff212529),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.location_on_outlined,
                  size: 15,
                  color: AppColor.greyText,
                ),
                Text(
                  'Cheraga, Alger',
                  style: TextStyle(
                    color: AppColor.greyText,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xffE9ECEF),
              thickness: 1,
            ),
            const SizedBox(height: 10),
            const Text(
              'About',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text(
              'Hi, my name is Aymen and Im a student at ESTIN University. Im currently in my second year of studying psychology and Im really enjoying it so far. My goal is to become a licensed therapist and help people who are struggling with mental health issues.Outside of school, I enjoy spending time with my friends and family. I love hiking, reading, and trying new foods. I also volunteer at a local community center where I teach basic computer skills to senior citizens.',
              style: TextStyle(color: Color(0xffADB5BD)),
            ),
            const SizedBox(height: 20),
            const Text(
              'Main Services',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text('Jarden Carryier'),
            const SizedBox(height: 20),
            const Text(
              'Other Servives',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: const Color(0xffDEE2E6)),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: const [
                  Text('Experience and knowledge of dog behavior'),
                  Divider(),
                  Text('Experience and knowledge of dog behavior'),
                  Divider(),
                  Text('Experience and knowledge of dog behavior'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Reviews',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.star_rounded, color: AppColor.primary),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 25,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Lamine Mohamed'),
                      Row(
                        children: const [
                          Icon(
                            Icons.star_rounded,
                            color: AppColor.primary,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '4.0',
                            style: TextStyle(color: AppColor.primary),
                          )
                        ],
                      ),
                      const Text(
                        'I recently visited a local restaurant and was thoroughly impressed with my experience. The atmosphere was warm and inviting, and the staff was incredibly friendly and attentive',
                        style: TextStyle(
                          color: Color(0xffADB5BD),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
