import 'package:go_router/go_router.dart';
import 'package:quotly/core/routes/route_names.dart';
import 'package:quotly/core/routes/route_path.dart';
import 'package:quotly/features/authentication/presentation/pages/login&signup/login_page.dart';
import 'package:quotly/features/authentication/presentation/pages/login&signup/sign_up_page.dart';
import 'package:quotly/features/authentication/presentation/pages/onboarding/onboarding.dart';
import 'package:quotly/features/authentication/presentation/pages/splash/splash_page.dart';

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
  ],
);
