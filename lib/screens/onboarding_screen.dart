import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      "title": "Find a local guide easily",
      "desc":
          "With Follow4U, you can find a local guide for your trip easily and explore as the way you want.",
      "image": "assets/images/Group 109.svg",
    },
    {
      "title": "Many tours around the world",
      "desc":
          "Explore tours across the globe with trusted guides and unique experiences.",
      "image": "assets/images/Group 102.svg",
    },
    {
      "title": "Create a trip and get offers",
      "desc":
          "Post your trip and receive offers from hundreds of local guides that suit you.",
      "image": "assets/images/Group 177.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [

            /// PAGE VIEW
            PageView.builder(
              controller: _controller,
              itemCount: _pages.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const SizedBox(height: 80),

                      /// 🔧 SỬA CHỖ NÀY (ảnh to hơn)
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.42,
                        width: double.infinity,
                        child: SvgPicture.asset(
                          _pages[index]["image"]!,
                          fit: BoxFit.contain,
                        ),
                      ),

                      const SizedBox(height: 40),

                      Text(
                        _pages[index]["title"]!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 15),

                      Text(
                        _pages[index]["desc"]!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          height: 1.5,
                        ),
                      ),

                      const Spacer(),
                      const SizedBox(height: 160),
                    ],
                  ),
                );
              },
            ),

            /// BOTTOM CONTROLS
            Positioned(
              bottom: 40,
              left: 20,
              right: 20,
              child: Column(
                children: [

                  /// DOTS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _pages.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: _currentPage == index ? 16 : 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? const Color(0xFF18C29C)
                              : Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// SKIP (giữ nguyên)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 80),

                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity:
                            _currentPage == _pages.length - 1 ? 0 : 1,
                        child: TextButton(
                          onPressed: () {
                            _controller.nextPage(
                              duration:
                                  const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text(
                            "SKIP",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// GET STARTED
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: _currentPage == _pages.length - 1
                        ? SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color(0xFF18C29C),
                                minimumSize:
                                    const Size(double.infinity, 50),
                                shape:
                                    RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(12),
                                ),
                                elevation: 0,
                              ),
                              onPressed: () {Navigator.pushNamed(context, "/signup");},
                              child: const Text(
                                "GET STARTED",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}