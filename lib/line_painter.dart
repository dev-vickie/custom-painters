import 'package:flutter/material.dart';

//create a LinePainter stateless widget
class LinePainter extends StatelessWidget {
  const LinePainter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: LinePainterWidget(),
        child: Container(),
      ),
    );
  }
}

class LinePainterWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..strokeWidth = 4;

    Offset p1 = Offset(10.0, size.height / 2);
    Offset p2 = Offset(size.width / 2, size.height/3);

    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
