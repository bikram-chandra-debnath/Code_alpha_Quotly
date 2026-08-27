import 'package:flutter/material.dart';
import 'package:quotly/core/common/widgets/buttons/elevated_button.dart';
import 'package:quotly/core/common/widgets/buttons/outlined_button.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';

class SignUpLowerSection extends StatelessWidget {
  const SignUpLowerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSizes.spaceBtwInputFields,
      children: [
        // terms and condition
        Align(
          alignment: Alignment.center,
          child: Text(
            AppTexts.signUpTerms,
            style: Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(),

        // Facebook
        AppElevatedButton(
          backgroundColor: Colors.blueAccent,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.facebook, color: AppColors.textWhite),
              Text(
                AppTexts.signUpFacbook,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: AppColors.textWhite),
              ),
              SizedBox(),
            ],
          ),
        ),
        // Google
        AppOutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.email),
              Text(
                AppTexts.signUpGoogle,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(),
            ],
          ),
        ),
        // Apple
        AppElevatedButton(
          backgroundColor: Colors.black,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.apple, color: AppColors.textWhite),
              Text(
                AppTexts.signUpApple,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: AppColors.textWhite),
              ),
              SizedBox(),
            ],
          ),
        ),

        SizedBox(height: AppSizes.spaceBtwItems),
      ],
    );
  }
}
