
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quotly/core/constants/images.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SvgPicture.asset(AppImages.logo),
    );
  }
}