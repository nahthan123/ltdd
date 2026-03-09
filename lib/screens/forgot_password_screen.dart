import 'package:flutter/material.dart';
import '../widgets/auth_header.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 35),
                      const Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Input your email, we will send you an instruction to reset your password.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 35),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "yoojin@gmail.com",
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        height: 55,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF18C29C),
                    foregroundColor: Colors.white,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/checkemail");
                          },
                          child: const Text(
                            "SEND",
                            style: TextStyle(
                              fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Back to Sign In",
                            style: TextStyle(
                              color: Color(0xFF18C29C),
                              fontWeight: FontWeight.w600,
                            ),
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