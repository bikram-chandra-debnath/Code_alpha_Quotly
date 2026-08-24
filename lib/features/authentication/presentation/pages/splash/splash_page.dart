import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quotly/core/routes/route_names.dart';
import 'package:quotly/features/authentication/presentation/widgets/splash/background.dart';
import 'package:quotly/features/authentication/presentation/widgets/splash/logo.dart';
import 'package:quotly/features/authentication/presentation/widgets/splash/name_and_subtitle.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      context.pushNamed(RouteNames.onboardingPage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            // background container
            SplashBackground(),

            // Logo
            SplashLogo(),

            // name & subtitle
            SplashNameAndSubtitle(),
          ],
        ),
      ),
    );
  }
}

