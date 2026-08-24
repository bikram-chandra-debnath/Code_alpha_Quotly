import 'package:flutter/material.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderColor = AppColors.buttonPrimary,
  });

  final VoidCallback onPressed;
  final Widget child;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(AppSizes.md),
        width: double.maxFinite,
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
