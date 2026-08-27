import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quotly/core/common/widgets/buttons/elevated_button.dart';
import 'package:quotly/core/common/widgets/text_field/text_field.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/padding.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';
import 'package:quotly/core/routes/route_names.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppTexts.otpVerification,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        automaticallyImplyLeading: false,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: AppPadding.padding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: AppSizes.spaceBtwSections),
              // otp
              AppTextField(hintText: AppTexts.enterOTP),
              SizedBox(height: AppSizes.spaceBtwSections),
              // verify button
              AppElevatedButton(
                onPressed: () {
                  context.pushNamed(
                    RouteNames.successPage,
                    extra: AppTexts.passwordChanged,
                  );
                },
                child: Text(
                  AppTexts.verifyOTP,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(color: AppColors.textWhite),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
