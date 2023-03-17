import 'package:flutter/material.dart';

import 'view/shared/back_button.dart';
import 'view/shared/custom_button.dart';

class MondheActivateScreen extends StatelessWidget {
  const MondheActivateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizedBoxSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF8F9FA),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButtons(),
          SizedBox(height: sizedBoxSize.height * 0.1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Activation of Your Account',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: sizedBoxSize.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'we need to confirm your identity, to let you apply for jobs and of course guarantee your safety.',
              style: TextStyle(fontSize: 16, color: Color(0xffADB5BD)),
            ),
          ),
          SizedBox(
            height: sizedBoxSize.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'You’ll Need To take a picture for your identity card so we can verify it.',
              style: TextStyle(fontSize: 16, color: Color(0xffADB5BD)),
            ),
          ),
          SizedBox(
            height: sizedBoxSize.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                  text: 'Take a shot',
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Color(0xffADB5BD),
                  )),
              SizedBox(width: sizedBoxSize.width * 0.08),
              CustomIconButton(
                  text: 'Upload',
                  icon: Icon(Icons.file_upload_outlined,
                      color: Color(0xffADB5BD))),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: CustomButton(
              onPressed: () {},
              text: 'ignore (Not Recommended)',
              textColor: Color(0xff495057),
              color: Color(0xffF2F5F6),
              isFullWidth: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomButton(
              onPressed: () {},
              text: 'Activate My Account',
              color: Colors.blue,
              isFullWidth: true,
            ),
          )
        ],
      )),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.text,
    required this.icon,
  });
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      padding: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          icon,
          Text(text, style: TextStyle(color: Color(0xffADB5BD))),
        ],
      ),
    );
  }
}
