import 'package:flutter/material.dart';

class CubicCurveTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(50, size.height - 100);
    var controlPoint2 = Offset(size.width - 50, size.height);
    var endPoint = Offset(size.width, size.height - 50);
    Path path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height - 50)
      ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
