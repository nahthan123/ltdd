import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
void initState() {
  super.initState();

  Future.delayed(const Duration(seconds: 3), () {
    if (!mounted) return; // Check if the widget is still in the widget tree
    

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const OnboardingScreen(),
      ),
    );
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey.shade200, // màu ngoài splash
    body: Center(
      child: SizedBox(
        width: 375,
        height: 812,
        child: SvgPicture.asset(
          "assets/images/Splash.svg",
          fit: BoxFit.contain, // không méo hình
        ),// SvgPicture.asset
      ),// SizedBox
    ),// Center
  );// return Scaffold
}
}
// Scaffold(
//   body: SizedBox.expand(
//     child: SvgPicture.asset(
//       "assets/images/Splash.svg",
//       fit: BoxFit.cover,
//     ),
//   ),
// );
// khi test trên thiết bị thật, nếu dùng BoxFit.cover sẽ bị méo hình, nên đổi thành BoxFit.contain để giữ tỉ lệ ảnh.