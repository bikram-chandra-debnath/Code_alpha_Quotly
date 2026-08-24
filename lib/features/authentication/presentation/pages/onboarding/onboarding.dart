import 'package:flutter/material.dart';
import 'package:quotly/features/authentication/presentation/widgets/onboarding/banner.dart';
import 'package:quotly/features/authentication/presentation/widgets/onboarding/men_svg.dart';
import 'package:quotly/features/authentication/presentation/widgets/onboarding/message_and_button.dart';
import 'package:quotly/features/authentication/presentation/widgets/onboarding/oval_shape.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Upper Banner
          OnboardingBanner(),
          // Lower oval shape
          OnboardingOvalShape(),
          // title, subtitle, button
          OnboardingMessageAndButton(),
          // men and earth
          OnboardingMen(),
        ],
      ),
    );
  }
}



