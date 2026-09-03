import 'package:flutter/material.dart';
import 'package:quotly/core/common/widgets/avatar/circular_avatar.dart';
import 'package:quotly/core/constants/sizes.dart';

class FriendsStorie extends StatelessWidget {
  const FriendsStorie({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,

      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => AppCircularAvatar(
        size: 60,
        image:
            "https://plus.unsplash.com/premium_photo-1705563088249-9d6bed8ee218?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ),

    
      separatorBuilder: (context, index) =>
          SizedBox(width: AppSizes.spaceBtwItems),
      itemCount: 10,
    );
  }
}
