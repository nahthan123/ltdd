import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    Path path = Path();

    // Top is straight, bottom is a smooth curve going down,
    // giống phần header trong thiết kế.
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 80,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}