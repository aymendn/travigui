import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_constant.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppConstant.logo,
      width: 100,
    );
  }
}
