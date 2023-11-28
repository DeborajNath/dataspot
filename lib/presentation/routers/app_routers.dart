import 'package:flutter/material.dart';
import 'package:shop_spectrum/presentation/routers/routes.dart';
import 'package:shop_spectrum/presentation/screens/dashboard/dashboard.dart';
import 'package:shop_spectrum/presentation/screens/forgotPassword/forgot_password.dart';
import 'package:shop_spectrum/presentation/screens/login/login.dart';
import 'package:shop_spectrum/presentation/screens/registration/registration_screen.dart';
import 'package:shop_spectrum/presentation/screens/splash/splash_screen.dart';
import 'package:shop_spectrum/presentation/screens/verifyEmail/verify_email_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    // final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.registration:
        return MaterialPageRoute(
          builder: (_) => const RegistrationScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginUserIdScreen(),
        );
      case Routes.dashboard:
        return MaterialPageRoute(
          builder: (_) => Dashboard(),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPassword(),
        );
      case Routes.verifyEmailScreen:
        return MaterialPageRoute(
          builder: (_) => const VerifyEmailScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Empty Screen"),
            ),
          ),
        );
    }
  }
}
