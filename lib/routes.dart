import 'package:dochome/modules/baby-register/view/baby_register_screen.dart';
import 'package:dochome/modules/edit_profile/edit_profile.dart';
import 'package:dochome/modules/forgot-password/view/forgot_password_screen.dart';
import 'package:dochome/modules/home/view/home_screen.dart';
import 'package:dochome/modules/login/view/login_screen.dart';
import 'package:dochome/modules/notification_screen/notification_screen.dart';
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
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRouteStrings.welcomeScreen:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case AppRouteStrings.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case AppRouteStrings.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRouteStrings.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case AppRouteStrings.otpVerificationScreen:
        return MaterialPageRoute(builder: (_) => const OtpVerificationScreen());
      case AppRouteStrings.resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case AppRouteStrings.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRouteStrings.editProfileScreen:
        return MaterialPageRoute(builder: (_) => const EditProfile());
      case AppRouteStrings.notificationScreen:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case AppRouteStrings.babyRegistrationScreen:
        return MaterialPageRoute(
          builder: (_) => const BabyRegistrationScreen(),
        );
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