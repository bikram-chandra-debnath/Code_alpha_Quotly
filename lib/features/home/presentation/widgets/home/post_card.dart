import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quotly/core/common/widgets/avatar/circular_avatar.dart';
import 'package:quotly/core/common/widgets/buttons/follow_button.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/features/home/presentation/widgets/home/reaction.dart';
import 'package:see_more_text/see_more_text.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.userProfileImage,
    required this.userName,
    required this.postLikes,
    required this.postComments,
    required this.postShares,
    this.postStatus,
    this.postImage,
    required this.profilePressed,
    required this.postTime,
    required this.onLikePressed,
    required this.onCommentPressed,
    required this.onSharePressed,
    required this.onDotPressed,
    this.isVerifiedProfile = false,
  });

  final String userProfileImage,
      userName,
      postLikes,
      postComments,
      postShares,
      postTime;
  final String? postStatus, postImage;
  final VoidCallback profilePressed,
      onLikePressed,
      onCommentPressed,
      onSharePressed,
      onDotPressed;

  final bool isVerifiedProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white),
      child: Column(
        children: [
          // profile and follow
          ProfileAndFollow(
            profilePressed: profilePressed,
            userProfileImage: userProfileImage,
            userName: userName,
            isVerifiedProfile: isVerifiedProfile,
            postTime: postTime,
          ),

          Column(
            children: [
              // status
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultSpace,
                ),
                child: SeeMoreText(
                  text: postStatus ?? "",
                  seeMoreText: "see more",
                  seeLessText: "see less",
                  maxLines: 2,
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
              ),

              SizedBox(height: AppSizes.spaceBtwItems),

              // image
              Image.network(postImage ?? "", fit: BoxFit.cover),
            ],
          ),

          // reactions
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: AppSizes.sm,
                  children: [
                    GestureDetector(
                      onTap: onLikePressed,
                      child: Reaction(
                        icon: Iconsax.heart,
                        totalReaction: postLikes,
                      ),
                    ),
                    GestureDetector(
                      onTap: onCommentPressed,
                      child: Reaction(
                        icon: Iconsax.message,
                        totalReaction: postComments,
                      ),
                    ),
                    GestureDetector(
                      onTap: onSharePressed,
                      child: Reaction(
                        icon: Iconsax.send_1,
                        totalReaction: postShares,
                      ),
                    ),
                  ],
                ),
                GestureDetector(onTap: onDotPressed, child: Icon(Iconsax.more)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileAndFollow extends StatelessWidget {
  const ProfileAndFollow({
    super.key,
    required this.profilePressed,
    required this.userProfileImage,
    required this.userName,
    required this.isVerifiedProfile,
    required this.postTime,
  });

  final VoidCallback profilePressed;
  final String userProfileImage;
  final String userName;
  final bool isVerifiedProfile;
  final String postTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: profilePressed,
                child: AppCircularAvatar(size: 50, image: userProfileImage),
              ),
              SizedBox(width: AppSizes.spaceBtwItems / 2),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: profilePressed,
                    child: Row(
                      children: [
                        Text(
                          userName,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(width: AppSizes.sm),
                        isVerifiedProfile
                            ? Icon(Iconsax.verify5, color: Colors.blueAccent)
                            : SizedBox(),
                      ],
                    ),
                  ),
                  SizedBox(height: AppSizes.spaceBtwItems / 3),
                  Text(
                    "$postTime ago",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
          // Follow Button
          FollowButton(onPressed: () {}),
        ],
      ),
    );
  }
}
