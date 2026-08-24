
import 'package:flutter/material.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,

      backgroundColor: AppColors.primary,
      disabledBackgroundColor: AppColors.buttonDisabled,

      foregroundColor: AppColors.light,
      disabledForegroundColor: AppColors.darkGrey,
      side: const BorderSide(color: AppColors.light),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: AppColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
      ),
    ),
  );
  static ElevatedButtonThemeData darktElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,

      backgroundColor: AppColors.primary,
      disabledBackgroundColor: AppColors.buttonDisabled,

      foregroundColor: AppColors.light,
      disabledForegroundColor: AppColors.darkGrey,
      side: const BorderSide(color: AppColors.light),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: AppColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
      ),
    ),
  );
}