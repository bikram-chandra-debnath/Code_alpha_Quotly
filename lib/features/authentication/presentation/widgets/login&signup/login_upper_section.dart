import 'package:flutter/material.dart';
import 'package:quotly/core/common/widgets/text_field/text_field.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';

class LoginUpperSection extends StatelessWidget {
  const LoginUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // login text
        Align(
          alignment: Alignment.center,
          child: Text(
            AppTexts.login,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields * 1.5),
        // username field
        AppTextField(hintText: AppTexts.userName),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        // password field
        AppTextField(hintText: AppTexts.password),
        SizedBox(height: AppSizes.spaceBtwInputFields),
      ],
    );
  }
}
