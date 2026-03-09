import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/signin_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/check_email_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: "/",

      routes: {
        "/": (context) => const SplashScreen(),
        "/onboarding": (context) => const OnboardingScreen(),
        "/signup": (context) => const SignUpScreen(),
        "/signin": (context) => const SignInScreen(),
        "/forgot": (context) => const ForgotPasswordScreen(),
        "/checkemail": (context) => const CheckEmailScreen(),
      },
    );
  }
}