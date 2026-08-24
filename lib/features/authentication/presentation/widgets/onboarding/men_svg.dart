import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quotly/core/constants/images.dart';

class OnboardingMen extends StatelessWidget {
  const OnboardingMen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SvgPicture.asset(AppImages.men),
    );
  }
}