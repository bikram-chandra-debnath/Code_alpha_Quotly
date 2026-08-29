import 'package:flutter/material.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderColor = AppColors.buttonPrimary,
    this.width,
    this.height,
    this.padding = const EdgeInsets.symmetric(
      horizontal: AppSizes.md,
      vertical: AppSizes.md / 2,
    ),
  });

  final VoidCallback onPressed;
  final Widget child;
  final Color borderColor;
  final double? width, height;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          color: Colors.transparent,
          border: Border.all(width: 1.5, color: borderColor),
        ),
        child: Center(child: child),
      ),
    );
  }
}
