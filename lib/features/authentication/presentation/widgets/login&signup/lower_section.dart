
import 'package:flutter/material.dart';
import 'package:quotly/core/common/widgets/buttons/elevated_button.dart';
import 'package:quotly/core/common/widgets/buttons/outlined_button.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';

class LoginLowerSection extends StatelessWidget {
  const LoginLowerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // sign in button
        AppElevatedButton(
          onPressed: () {},
          child: Text(
            AppTexts.signIn,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: AppColors.textWhite,
            ),
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwItems),
    
        // Forget password button
        AppElevatedButton(
          backgroundColor: AppColors.buttonPrimary.withValues(
            alpha: 0.5,
          ),
          onPressed: () {},
          child: Text(
            AppTexts.forgetPassword,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
    
        SizedBox(height: AppSizes.spaceBtwItems),
    
        // create account button
        AppOutlinedButton(
          onPressed: () {},
          child: Text(
            AppTexts.createAccount,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
