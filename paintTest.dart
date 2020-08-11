import 'package:flutter/material.dart';

class PaintTest extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRRect(RRect.fromLTRBR(0, 0, 0, 0, Radius.circular(0)));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
