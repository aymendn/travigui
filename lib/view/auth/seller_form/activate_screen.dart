import 'package:flutter/material.dart';

import '../../../core/app_color.dart';

import '../../shared/custom_button.dart';
import '../../shared/scaffold_with_safe_area.dart';

class ActivateScreen extends StatelessWidget {
  const ActivateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizedBoxSize = MediaQuery.of(context).size;
    return ScaffoldWithSafeArea(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: sizedBoxSize.height * 0.08),
            const Text(
              'Activation of Your Account',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: sizedBoxSize.height * 0.03,
            ),
            const Text(
              'we need to confirm your identity, to let you apply for jobs and of course guarantee your safety.',
              style: TextStyle(fontSize: 16, color: AppColor.grey500),
            ),
            SizedBox(
              height: sizedBoxSize.height * 0.04,
            ),
            const Text(
              'You’ll Need To take a picture for your identity card so we can verify it.',
              style: TextStyle(fontSize: 16, color: AppColor.grey500),
            ),
            SizedBox(
              height: sizedBoxSize.height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomIconButton(
                  text: 'Take a shot',
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Color(0xffADB5BD),
                  ),
                ),
                SizedBox(width: sizedBoxSize.width * 0.08),
                const CustomIconButton(
                  text: 'Upload',
                  icon: Icon(
                    Icons.file_upload_outlined,
                    color: Color(0xffADB5BD),
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {
                //TODO
                // context.pushReplacement(AppRoute.)
              },
              text: 'Ignore (Not Recommended)',
              textColor: AppColor.grey600,
              color: AppColor.grey,
              isFullWidth: true,
            ),
            const SizedBox(height: 12),
            CustomButton(
              onPressed: () {
                //TODO
                // context.pushReplacement(AppRoute.)
              },
              text: 'Activate My Account',
              color: AppColor.primary,
              isFullWidth: true,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
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
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          icon,
          Text(text, style: const TextStyle(color: Color(0xffADB5BD))),
        ],
      ),
    );
  }
}
