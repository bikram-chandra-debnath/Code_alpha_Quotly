import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';

class SplashNameAndSubtitle extends StatelessWidget {
  const SplashNameAndSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: AppSizes.spaceBtwSections,
        children: [
          SizedBox(height: AppSizes.spaceBtwSections),
          // App name
          Text(
            AppTexts.quotly,
            style: GoogleFonts.sreeKrushnadevaraya(
              fontSize: 55,
              color: AppColors.textWhite,
            ),
          ),
          // subtitle
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.defaultSpace * 2,
            ),
            child: Text(
              AppTexts.splashSubtitle,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.textWhite,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
