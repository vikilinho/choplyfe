import 'dart:math';

import 'package:flutter/material.dart';

class CircleProgress extends CustomPainter {
  final strokeCircle = 5.0;
  double currentProgress;
  CircleProgress(this.currentProgress);
  @override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
      ..strokeWidth = 2
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = 100;
    canvas.drawCircle(center, radius, circle);
    //draw animation
    Paint animationArc = Paint()
      ..strokeWidth = 2
      ..color = const Color(0xffF4972E)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    double angle = -2 * pi * (currentProgress / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        angle, false, animationArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
