import 'package:flutter/material.dart';

class RectanglePainter extends StatelessWidget {
  const RectanglePainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: PaintRectangle(),
        child: Container(),
      ),
    );
  }
}

class PaintRectangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;
    //Has to start with width
    Offset center = Offset(size.width / 2, size.height / 2);
    Rect rect = Rect.fromCircle(center: center, radius: 70);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
