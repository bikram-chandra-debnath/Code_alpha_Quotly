import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quotly/core/constants/images.dart';
import 'package:quotly/core/constants/padding.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPadding.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),

            // close button
            Spacer(),
            // picture
            SvgPicture.asset(AppImages.successful),
            SizedBox(height: AppSizes.spaceBtwSections),

            // successful
            Text(
              AppTexts.successfull,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            // message
            Align(
              alignment: Alignment.center,
              child: Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
