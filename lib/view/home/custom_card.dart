import 'package:flutter/material.dart';

import '../shared/custom_button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
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
            child: Text(image),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        SizedBox(
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 15,
                      color: Color(0xffADB5BD),
                    ),
                    Text(
                      location,
                      style: TextStyle(color: Color(0xffADB5BD), fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        isSeller ? price : mainService,
                        style: TextStyle(
                          color: Color(0xff495057),
                        ),
                      ),
                    ),
                    Spacer(),
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
