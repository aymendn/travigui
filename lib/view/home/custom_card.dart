import 'package:flutter/material.dart';

import '../shared/custom_button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.text,
    required this.location,
    this.price = '',
    required this.image,
    required this.buttonText,
    required this.buttonColor,
    this.mainService = '',
    required this.isSeller,
  });
  final String text;
  final String location;
  final String price;
  final String mainService;
  final String image;
  final String buttonText;
  final Color buttonColor;
  final bool isSeller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(image),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    text,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 15,
                      color: Color(0xffADB5BD),
                    ),
                    Text(
                      location,
                      style: const TextStyle(
                          color: Color(0xffADB5BD), fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        isSeller ? price : mainService,
                        style: const TextStyle(
                          color: Color(0xff495057),
                        ),
                      ),
                    ),
                    const Spacer(),
                    CustomButton(
                      text: buttonText,
                      onPressed: () {},
                      color: buttonColor,
                    ),
                  ],
                )
              ],
            )),
      ],
    );
  }
}
