import 'package:flutter/material.dart';
import '../widgets/auth_header.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AuthHeader(),
            Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 45),
                      const Text(
                        "Check Email",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Please check your email for the instructions on how to reset your password.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 60),
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE8F8F4),
                          borderRadius: BorderRadius.circular(65),
                        ),
                        child: const Icon(
                          Icons.mail_outline,
                          size: 70,
                          color: Color(0xFF18C29C),
                        ),
                      ),
                      const SizedBox(height: 60),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/signin");
                        },
                        child: const Text(
                          "Back to Sign In",
                          style: TextStyle(
                            color: Color(0xFF18C29C),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}