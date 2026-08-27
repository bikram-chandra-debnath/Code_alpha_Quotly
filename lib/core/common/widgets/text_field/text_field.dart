import 'package:flutter/material.dart';
import 'package:quotly/core/constants/colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hintText,
    this.controller,
    this.suffixIcon,
    this.obscureText = false,
    this.borderRadius = 100,
    this.minLines,
    this.maxLines,
  });
  final String? hintText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool obscureText;
  final double borderRadius;
  final int? minLines, maxLines;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.inputBackground,
        borderRadius: BorderRadius.circular(borderRadius),
      ),

      child: TextFormField(
        minLines: minLines,
        maxLines: obscureText ? 1 : maxLines,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
          disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide.none),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
