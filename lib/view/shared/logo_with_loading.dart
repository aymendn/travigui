import 'package:flutter/material.dart';

import '../../core/app_color.dart';
import 'logo.dart';

class LogoWithLoading extends StatelessWidget {
  const LogoWithLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Logo(),
          SizedBox(height: 20),
          SizedBox(
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: LinearProgressIndicator(
                minHeight: 5,
                color: AppColor.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
