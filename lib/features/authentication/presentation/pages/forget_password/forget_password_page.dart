import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quotly/core/common/widgets/buttons/elevated_button.dart';
import 'package:quotly/core/common/widgets/text_field/text_field.dart';
import 'package:quotly/core/constants/colors.dart';
import 'package:quotly/core/constants/padding.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/core/constants/texts.dart';
import 'package:quotly/core/routes/route_names.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(AppTexts.forgetPassword),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: AppPadding.padding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: AppSizes.spaceBtwSections),
              // reset your password
              Text(
                AppTexts.resetYourPassword,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: AppSizes.spaceBtwInputFields * 2),
              // email
              AppTextField(hintText: AppTexts.emailAddress),
              SizedBox(height: AppSizes.spaceBtwInputFields),
              //new password
              AppTextField(hintText: AppTexts.newPassword, obscureText: true),
              SizedBox(height: AppSizes.spaceBtwInputFields),
              // confirm password
              AppTextField(
                hintText: AppTexts.confirmPassword,
                obscureText: true,
              ),

              SizedBox(height: AppSizes.spaceBtwSections),
              // verify button
              AppElevatedButton(
                onPressed: () {
                  context.pushNamed(RouteNames.oTPVerificationPage);
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
      resizeToAvoidBottomInset: false,
    );
  }
}
