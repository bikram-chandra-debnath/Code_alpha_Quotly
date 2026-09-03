import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quotly/core/common/widgets/buttons/action_button.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';
import 'package:quotly/core/utilities/helpers/device_helper.dart';
import 'package:quotly/features/home/presentation/widgets/home/friends_storie.dart';
import 'package:quotly/features/home/presentation/widgets/home/make_post.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.white,
      collapsedHeight: DeviceHelper.getAppBarHeight() * 1.1,

      expandedHeight: 150,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppTexts.quotly, style: GoogleFonts.pacifico(fontSize: 30)),
            // messsage and notifications
            Row(
              children: [
                // notification button
                AppActionButton(
                  onPressed: () {},
                  icon: Iconsax.notification,
                  isNewNotification: true,
                ),

                SizedBox(width: AppSizes.spaceBtwItems),

                // message button
                AppActionButton(
                  onPressed: () {},
                  icon: Iconsax.message,
                  isNewNotification: true,
                ),
              ],
            ),
          ],
        ),
      ),

      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // Create Post and Friends stories
                child: Row(
                  children: [
                    SizedBox(width: AppSizes.defaultSpace),

                    // create Post
                    MakePost(),

                    // stories
                    FriendsStorie(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
