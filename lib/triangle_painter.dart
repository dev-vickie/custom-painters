import 'package:flutter/material.dart';

class TrianglePainter extends StatelessWidget {
  const TrianglePainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: PaintTriangle(),
        child: Container(),
      ),
    );
  }
}

class PaintTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final Path path = Path();
    path.moveTo(size.width / 2, size.height / 3.4);
    path.lineTo(30.0, size.height / 2);
    path.lineTo(size.width - 30, size.height / 2);
    path.lineTo(size.width / 2, size.height / 3);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
