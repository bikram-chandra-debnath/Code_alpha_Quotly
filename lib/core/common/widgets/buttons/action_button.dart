import 'package:flutter/material.dart';
import 'package:quotly/core/constants/colors.dart';

class AppActionButton extends StatelessWidget {
  const AppActionButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.isNewNotification = false,
    this.size,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final bool isNewNotification;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Icon(icon, size: size),
          isNewNotification
              ? Positioned(
                  top: 2,
                  right: 2,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: AppColors.borderPrimary2,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
