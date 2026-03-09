import 'package:flutter/material.dart';
import '../widgets/auth_header.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                        "Sign In",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Welcome back",
                        style: TextStyle(
                          color: Color(0xFF18C29C),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 35),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "yoojin@gmail.com",
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Type password",
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/forgot");
                          },
                          child: const Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
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
                          onPressed: () {},
                          child: const Text(
                            "SIGN IN",
                            style: TextStyle(
                              fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Center(
                        child: Text(
                          "or sign in with",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _SocialButton(
                            color: const Color(0xFF3B5998),
                            icon: Icons.facebook,
                          ),
                          const SizedBox(width: 18),
                          _SocialButton(
                            color: const Color(0xFFFFC107),
                            icon: Icons.message,
                          ),
                          const SizedBox(width: 18),
                          _SocialButton(
                            color: const Color(0xFF4CAF50),
                            icon: Icons.chat_bubble_outline,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                            children: [
                              const TextSpan(
                                  text: "Don't have an account? "),
                              WidgetSpan(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, "/signup");
                                  },
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Color(0xFF18C29C),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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

class _SocialButton extends StatelessWidget {
  final Color color;
  final IconData icon;

  const _SocialButton({
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}