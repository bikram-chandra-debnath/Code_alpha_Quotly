import 'package:flutter/material.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/utilities/helpers/device_helper.dart';

class OnboardingOvalShape extends StatelessWidget {
  const OnboardingOvalShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -40,
      right: -40,
      bottom: -DeviceHelper.getScreenHeight(context) * 0.23,

      child: ClipOval(
        child: Container(
          height: DeviceHelper.getScreenHeight(context) * 0.4,
          width: double.maxFinite,
          decoration: BoxDecoration(color: AppColors.secondery),
        ),
      ),
    );
  }
}

