import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Header với nền xanh + đường cong trắng + pattern máy bay giống thiết kế.
class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 193,
      child: Stack(
        children: [
          // Nền xanh
          const Positioned.fill(
            child: ColoredBox(color: Color(0xFF18C29C)),
          ),

          // Pattern: máy bay + mây + đường nét (Group 7)
          Positioned.fill(
            child: SvgPicture.asset(
              "assets/images/Group 7.svg",
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),

          // Mảng trắng ở dưới với đường cong che bớt pattern
          Positioned.fill(
            child: ClipPath(
              clipper: _BottomWhiteClipper(),
              child: const ColoredBox(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomWhiteClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Đường cong tương tự mockup: 2 bên thấp hơn, giữa cao hơn.
    final edgeY = size.height * 0.78;
    final centerY = size.height * 0.86;

    final path = Path()
      ..moveTo(0, edgeY)
      ..quadraticBezierTo(size.width / 2, centerY, size.width, edgeY)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

