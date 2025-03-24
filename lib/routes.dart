import 'package:dochome/screens/edit_profile/edit_profile.dart';
import 'package:dochome/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:dochome/screens/home_screen/home_screen.dart';
import 'package:dochome/screens/login_screen/login_screen.dart';
import 'package:dochome/screens/notification_screen/notification_screen.dart';
import 'package:dochome/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:dochome/screens/register_screen/register_screen.dart';
import 'package:dochome/screens/reset_password_screen/reset_password_screen.dart';
import 'package:dochome/screens/splash_screen/splash_screen.dart';
import 'package:dochome/screens/welcome_screen/welcome_screen.dart';
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
      case AppRouteStrings.editProfileScreen:
        return MaterialPageRoute(builder: (_) => EditProfile());
      case AppRouteStrings.notificationScreen:
        return MaterialPageRoute(builder: (_) => NotificationScreen());
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
