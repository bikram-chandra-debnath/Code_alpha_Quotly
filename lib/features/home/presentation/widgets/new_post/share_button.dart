
import 'package:flutter/material.dart';
import 'package:quotly/core/common/widgets/buttons/elevated_button.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(
        left: AppSizes.defaultSpace,
        right: AppSizes.defaultSpace,
        top: AppSizes.spaceBtwItems / 2,
        bottom: AppSizes.spaceBtwItems,
      ),
    
      child: AppElevatedButton(
        onPressed: () {},
        child: Text(
          AppTexts.share,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
