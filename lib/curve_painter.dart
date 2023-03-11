import 'package:flutter/material.dart';

class CurvePainter extends StatelessWidget {
  const CurvePainter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('custom painters'),
      ),
      body: Stack(
        children: [
          CustomPaint(
            painter: PaintCurve(),
            child: Container(),
          ),
          CustomPaint(
            painter: SecondPainter(),
            child: Container(),
          ),
          CustomPaint(
            painter: Cpainter(),
            child: Container(),
          )
        ],
      ),
    );
  }
}

class PaintCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.deepPurpleAccent;

    Path path = Path()
      ..moveTo(0.0, 0.0)
      ..lineTo(0, size.height / 1.5)
      ..quadraticBezierTo(
          size.width / 2, size.height / 3, size.width, size.height / 3)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class SecondPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.transparent.withOpacity(0.2);
    final Path path = Path()
      ..moveTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, size.height / 3)
      ..quadraticBezierTo(
          size.width / 2, size.height / 2.5, size.width, size.height / 1.5)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class Cpainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.fill 
      ..color =const Color.fromARGB(255, 233, 177, 10);

    Offset center = Offset(size.width / 2, size.height / 4.5);
    canvas.drawCircle(center, 60.0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
