import 'package:flutter/material.dart';
import 'package:quotly/core/constants/padding.dart';
import 'package:quotly/core/constants/sizes.dart';
import 'package:quotly/features/authentication/presentation/widgets/login&signup/signup_body_section.dart';
import 'package:quotly/features/authentication/presentation/widgets/login&signup/signup_header_section.dart';
import 'package:quotly/features/authentication/presentation/widgets/login&signup/signup_lower_section.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPadding.padding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppSizes.spaceBtwItems,
            children: [
              // heal line
              SignUpHeaderSection(),
              // sign up fields and create button
              SignUpBodySection(),
              // another signup buttons
              SignUpLowerSection(),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
