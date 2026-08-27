import 'package:flutter/material.dart';
import 'package:quotly/core/common/widgets/buttons/elevated_button.dart';
import 'package:quotly/core/common/widgets/text_field/text_field.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';

class SignUpBodySection extends StatelessWidget {
  const SignUpBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppSizes.spaceBtwInputFields,
      children: [
        Text(
          AppTexts.signUp,
          style: Theme.of(context).textTheme.headlineMedium,
        ),

        Row(
          children: [
            Expanded(child: AppTextField(hintText: AppTexts.firstName)),
            SizedBox(width: AppSizes.spaceBtwInputFields),
            Expanded(child: AppTextField(hintText: AppTexts.surname)),
          ],
        ),
        AppTextField(hintText: AppTexts.mobilePhone),
        AppTextField(hintText: AppTexts.emailAddress),
        AppTextField(hintText: AppTexts.password),
        SizedBox(),
        AppElevatedButton(
          onPressed: () {},
          child: Text(
            AppTexts.createAccount,
            style: Theme.of(
              context,
            ).textTheme.titleLarge!.copyWith(color: AppColors.textWhite),
          ),
        ),
      ],
    );
  }
}
