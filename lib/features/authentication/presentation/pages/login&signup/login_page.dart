import 'package:flutter/material.dart';
import 'package:quotly/core/constants/padding.dart';
import 'package:quotly/features/authentication/presentation/widgets/login&signup/lower_section.dart';
import 'package:quotly/features/authentication/presentation/widgets/login&signup/upper_section.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPadding.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [LoginUpperSection(), LoginLowerSection()],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
