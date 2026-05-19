import 'package:flutter/material.dart';

class GreyCloudPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey;
    final path = Path();

    path.addOval(Rect.fromLTWH(0, 5, 50, 50));
    path.addOval(Rect.fromLTWH(35, 0, 30, 30));
    path.addOval(Rect.fromLTWH(60, -15, 80, 80));
    path.addOval(Rect.fromLTWH(110, -15, 70, 70));
    path.addOval(Rect.fromLTWH(160, -30, 100, 100));
    path.addOval(Rect.fromLTWH(220, -20, 90, 90));
    path.addOval(Rect.fromLTWH(260, -60, 90, 90));

    path.addOval(Rect.fromLTWH(280, -80, 110, 110));

    path.addRect(Rect.fromLTWH(0,20,400,40));
    path.addRect(Rect.fromLTWH(340,-20,60,50));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}