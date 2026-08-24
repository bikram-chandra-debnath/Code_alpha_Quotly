
import 'package:flutter/material.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';

class AppbarTheme {
  AppbarTheme._();


  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.black,size: AppSizes.iconmd),
    actionsIconTheme: IconThemeData(color: AppColors.black,size: AppSizes.iconmd),
    titleTextStyle: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: AppColors.black,),
  );
  static AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.black,size: AppSizes.iconmd),
    actionsIconTheme: IconThemeData(color: AppColors.white,size: AppSizes.iconmd),
    titleTextStyle: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600,color: AppColors.white,),
  );
}