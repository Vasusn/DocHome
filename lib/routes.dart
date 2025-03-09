import 'package:dochome/modules/forgot-password/view/forgot_password_screen.dart';
import 'package:dochome/modules/home/view/home_screen.dart';
import 'package:dochome/modules/login/view/login_screen.dart';
import 'package:dochome/modules/otp-verification/view/otp_verification_screen.dart';
import 'package:dochome/modules/register/view/register_screen.dart';
import 'package:dochome/modules/reset-password/view/reset_password_screen.dart';
import 'package:dochome/modules/splash/splash_screen.dart';
import 'package:dochome/modules/welcome/view/welcome_screen.dart';
import 'package:dochome/values/strings/app_routes_string.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppRouteStrings.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case AppRouteStrings.welcomeScreen:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case AppRouteStrings.registerScreen:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case AppRouteStrings.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRouteStrings.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());
      case AppRouteStrings.otpVerificationScreen:
        return MaterialPageRoute(builder: (_) => OtpVerificationScreen());
      case AppRouteStrings.resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());
      case AppRouteStrings.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('404 Page Not Found!')),
        );
      },
    );
  }
}
