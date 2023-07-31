import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  final Offset offset;

  ShapePainter({required this.offset});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;
    canvas.drawCircle(offset, 10, paint);
  }

  @override
  bool shouldRepaint(ShapePainter oldDelegate) => true;
}
