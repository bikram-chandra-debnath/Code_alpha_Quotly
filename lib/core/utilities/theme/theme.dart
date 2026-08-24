import 'package:flutter/material.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/utilities/theme/widget_theme/appbar_theme.dart';
import 'package:quotly/core/utilities/theme/widget_theme/bottom_sheet_theme.dart';
import 'package:quotly/core/utilities/theme/widget_theme/check_box_theme.dart';
import 'package:quotly/core/utilities/theme/widget_theme/chip_theme.dart';
import 'package:quotly/core/utilities/theme/widget_theme/elevated_button_theme.dart';
import 'package:quotly/core/utilities/theme/widget_theme/outlined_button_theme.dart';
import 'package:quotly/core/utilities/theme/widget_theme/text_field_theme.dart';
import 'package:quotly/core/utilities/theme/widget_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightMode = ThemeData(
    useMaterial3: true,
    // fontFamily: "Nunito",
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    disabledColor: AppColors.grey,
    scaffoldBackgroundColor: AppColors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButton,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: AppbarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkMode = ThemeData(
    useMaterial3: true,
    // fontFamily: "Nunito",
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    disabledColor: AppColors.grey,
    scaffoldBackgroundColor: AppColors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darktElevatedButton,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: AppbarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,
  );
}
