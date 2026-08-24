
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotly/core/constants/colors.dart';

class AppTextTheme{


AppTextTheme._();


static TextTheme lightTextTheme = TextTheme(
  headlineLarge:GoogleFonts.poppins(fontSize: 32.0,fontWeight: FontWeight.bold,color: AppColors.dark),
  headlineMedium:GoogleFonts.poppins(fontSize: 24.0,fontWeight: FontWeight.w600,color: AppColors.dark),
  headlineSmall:GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.dark),

  titleLarge:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.dark),
  titleMedium:GoogleFonts.poppins(fontSize: 16.0,fontWeight: FontWeight.w500,color: AppColors.dark),
  titleSmall:GoogleFonts.poppins(fontSize: 16.0,fontWeight: FontWeight.w400,color: AppColors.dark),

  bodyLarge:GoogleFonts.poppins(fontSize: 14.0,  fontWeight: FontWeight.w500, color: AppColors.dark),
  bodyMedium:GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.normal,color: AppColors.dark),
  bodySmall:GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.w500,color: AppColors.dark.withValues(alpha: 0.5)),

  labelLarge:GoogleFonts.poppins(fontSize: 12.0,fontWeight: FontWeight.normal,color: AppColors.dark),
  labelMedium:GoogleFonts.poppins(fontSize: 12.0,fontWeight: FontWeight.normal,color: AppColors.dark.withValues(alpha: 0.5)),



);
static TextTheme darkTextTheme = TextTheme(
  headlineLarge:GoogleFonts.poppins(fontSize: 32.0,fontWeight: FontWeight.bold,color: AppColors.light),
  headlineMedium:GoogleFonts.poppins(fontSize: 24.0,fontWeight: FontWeight.w600,color: AppColors.light),
  headlineSmall:GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.light),

  titleLarge:GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.light),
  titleMedium:GoogleFonts.poppins(fontSize: 16.0,fontWeight: FontWeight.w500,color: AppColors.light),
  titleSmall:GoogleFonts.poppins(fontSize: 16.0,fontWeight: FontWeight.w400,color: AppColors.light),

  bodyLarge:GoogleFonts.poppins(fontSize: 14.0,  fontWeight: FontWeight.w500, color: AppColors.light),
  bodyMedium:GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.normal,color: AppColors.light),
  bodySmall:GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.w500,color: AppColors.light.withValues(alpha: 0.5)),

  labelLarge:GoogleFonts.poppins(fontSize: 12.0,fontWeight: FontWeight.normal,color: AppColors.light),
  labelMedium:GoogleFonts.poppins(fontSize: 12.0,fontWeight: FontWeight.normal,color: AppColors.light.withValues(alpha: 0.5)),



);



}