
import 'package:flutter/material.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/utilities/helpers/device_helper.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceHelper.getScreenHeight(context),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
    
          colors: [AppColors.gradient1, AppColors.gradient2],
        ),
      ),
    );
  }
}