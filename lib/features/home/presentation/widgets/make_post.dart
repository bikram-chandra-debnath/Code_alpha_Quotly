import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quotly/core/common/widgets/avatar/circular_avatar.dart';
import 'package:quotly/core/constants/colors.dart';

class MakePost extends StatelessWidget {
  const MakePost({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 70,
        width: 70,
        child: Stack(
          children: [
            AppCircularAvatar(
              outlineColor: AppColors.darkGrey,
              // user profile image
              image:
                  "https://plus.unsplash.com/premium_photo-1705563088249-9d6bed8ee218?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white.withValues(alpha: 0.2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(1000)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Center(
                      child: Icon(Iconsax.add, color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
