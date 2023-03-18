import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/app_color.dart';
import '../../core/app_route.dart';
import '../shared/custom_button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.location,
    required this.subtitle,
    required this.imageUrl,
    this.isSeller = true,
  });
  final String title;
  final String location;
  final String subtitle;
  final String imageUrl;
  final bool isSeller;

  @override
  Widget build(BuildContext context) {
    void onButtonPressed() {
      if (isSeller) {
        Navigator.of(context).pushNamed(AppRoute.sellerDetails);
      } else {}
    }

    return Container(
      height: 160,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: min(120, MediaQuery.of(context).size.width * 0.3),
            height: 140,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(imageUrl),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 14,
                      color: Color(0xffADB5BD),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      location,
                      style: const TextStyle(
                          color: Color(0xffADB5BD), fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xff495057),
                    fontSize: 13,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      text: isSeller ? 'Postuler' : 'Recruter',
                      onPressed: onButtonPressed,
                      color: isSeller ? AppColor.primary : AppColor.secondary,
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
