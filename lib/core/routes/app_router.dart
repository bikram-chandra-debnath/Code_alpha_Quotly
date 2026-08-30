import 'package:go_router/go_router.dart';
import 'package:quotly/core/common/pages/otp_verification.dart';
import 'package:quotly/core/common/pages/success_page.dart';
import 'package:quotly/core/routes/route_names.dart';
import 'package:quotly/core/routes/route_path.dart';
import 'package:quotly/features/authentication/presentation/pages/forget_password/forget_password_page.dart';
import 'package:quotly/features/authentication/presentation/pages/login&signup/login_page.dart';
import 'package:quotly/features/authentication/presentation/pages/login&signup/sign_up_page.dart';
import 'package:quotly/features/authentication/presentation/pages/onboarding/onboarding.dart';
import 'package:quotly/features/authentication/presentation/pages/splash/splash_page.dart';
import 'package:quotly/features/home/presentation/pages/home_page.dart';

final routers = GoRouter(
  initialLocation: RoutePath.splashPage,
  routes: [
    GoRoute(
      path: RoutePath.splashPage,
      name: RouteNames.splashPage,
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: RoutePath.onboardingPage,
      name: RouteNames.onboardingPage,
      builder: (context, state) => OnboardingPage(),
    ),
    GoRoute(
      path: RoutePath.loginPage,
      name: RouteNames.loginPage,
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: RoutePath.signUpPage,
      name: RouteNames.signUpPage,
      builder: (context, state) => SignUpPage(),
    ),
    GoRoute(
      path: RoutePath.forgetPasswordPage,
      name: RouteNames.forgetPasswordPage,
      builder: (context, state) => ForgetPasswordPage(),
    ),
    GoRoute(
      path: RoutePath.oTPVerificationPage,
      name: RouteNames.oTPVerificationPage,
      builder: (context, state) => OtpVerificationPage(),
    ),
    GoRoute(
      path: RoutePath.successPage,
      name: RouteNames.successPage,
      builder: (context, state) {
        final message = state.extra as String;
        return SuccessPage(message: message);
      },
    ),
    GoRoute(
      path: RoutePath.homePage,
      name: RouteNames.homePage,
      builder: (context, state) {
        return HomePage();
      },
    ),
  ],
);
