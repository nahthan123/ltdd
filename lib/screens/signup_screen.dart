import 'package:flutter/material.dart';
import '../widgets/auth_header.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String role = "Traveler";

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
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: "Traveler",
                            groupValue: role,
                            activeColor: const Color(0xFF18C29C),
                            onChanged: (value) {
                              setState(() {
                                role = value!;
                              });
                            },
                          ),
                          const Text(
                            "Traveler",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(width: 25),
                      Row(
                        children: [
                          Radio(
                            value: "Guide",
                            groupValue: role,
                            activeColor: const Color(0xFF18C29C),
                            onChanged: (value) {
                              setState(() {
                                role = value!;
                              });
                            },
                          ),
                          const Text(
                            "Guide",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            labelText: "First Name",
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            labelText: "Last Name",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Country",
                      hintText: "Country",
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Type email",
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
                  const SizedBox(height: 5),
                  const Text(
                    "Password has more than 6 letters",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                    ),
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text:
                                "By Signing Up, you agree to our ",
                          ),
                          TextSpan(
                            text: "Terms & Conditions",
                            style: TextStyle(
                              color: Color(0xFF18C29C),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
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
                        "SIGN UP",
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
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                        children: [
                          const TextSpan(
                            text: "Already have an account? ",
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/signin");
                              },
                              child: const Text(
                                "Sign In",
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

