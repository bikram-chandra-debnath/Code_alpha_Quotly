import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quotly/core/constants/images.dart';
import 'package:quotly/core/constants/sizes.dart';

class OnboardingBanner extends StatelessWidget {
  const OnboardingBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      left: AppSizes.defaultSpace,
      right: AppSizes.defaultSpace,
      child: SvgPicture.asset(AppImages.onboardingBanner),
    );
  }
}
