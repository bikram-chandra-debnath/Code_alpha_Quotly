import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quotly/core/common/widgets/buttons/elevated_button.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';
import 'package:quotly/core/routes/route_names.dart';
import 'package:quotly/core/utilities/helpers/device_helper.dart';

class OnboardingMessageAndButton extends StatelessWidget {
  const OnboardingMessageAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppSizes.spaceBtwItems / 2,
          children: [
            SizedBox(height: DeviceHelper.getScreenWidth(context) * 0.12),

            // title
            Text(
              AppTexts.onboardingTitle,
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            // subtitle
            Text(
              AppTexts.onboardingSubtitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppSizes.spaceBtwItems / 2),

            // Get started buttton
            AppElevatedButton(
              onPressed: () {
                context.pushReplacementNamed(RouteNames.loginPage);
              },
              child: Text(
                AppTexts.getStarted,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(color: AppColors.textWhite),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
