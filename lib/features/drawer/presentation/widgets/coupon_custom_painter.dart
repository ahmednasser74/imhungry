
import 'package:flutter/material.dart';

class CouponShapeCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.02395210, size.height * 0.1323529);
    path_0.cubicTo(
        size.width * 0.02395210,
        size.height * 0.08362206,
        size.width * 0.04003772,
        size.height * 0.04411765,
        size.width * 0.05988024,
        size.height * 0.04411765);
    path_0.lineTo(size.width * 0.9401198, size.height * 0.04411765);
    path_0.cubicTo(
        size.width * 0.9599611,
        size.height * 0.04411765,
        size.width * 0.9760479,
        size.height * 0.08362206,
        size.width * 0.9760479,
        size.height * 0.1323529);
    path_0.lineTo(size.width * 0.9760479, size.height * 0.3718485);
    path_0.cubicTo(
        size.width * 0.9528982,
        size.height * 0.3718485,
        size.width * 0.9341317,
        size.height * 0.4245213,
        size.width * 0.9341317,
        size.height * 0.4894956);
    path_0.cubicTo(
        size.width * 0.9341317,
        size.height * 0.5544699,
        size.width * 0.9528982,
        size.height * 0.6071426,
        size.width * 0.9760479,
        size.height * 0.6071426);
    path_0.lineTo(size.width * 0.9760479, size.height * 0.8382353);
    path_0.cubicTo(
        size.width * 0.9760479,
        size.height * 0.8869632,
        size.width * 0.9599611,
        size.height * 0.9264706,
        size.width * 0.9401198,
        size.height * 0.9264706);
    path_0.lineTo(size.width * 0.05988024, size.height * 0.9264706);
    path_0.cubicTo(
        size.width * 0.04003772,
        size.height * 0.9264706,
        size.width * 0.02395210,
        size.height * 0.8869632,
        size.width * 0.02395210,
        size.height * 0.8382353);
    path_0.lineTo(size.width * 0.02395210, size.height * 0.6071426);
    path_0.cubicTo(
        size.width * 0.04710299,
        size.height * 0.6071426,
        size.width * 0.06586826,
        size.height * 0.5544699,
        size.width * 0.06586826,
        size.height * 0.4894956);
    path_0.cubicTo(
        size.width * 0.06586826,
        size.height * 0.4245213,
        size.width * 0.04710299,
        size.height * 0.3718485,
        size.width * 0.02395210,
        size.height * 0.3718485);
    path_0.lineTo(size.width * 0.02395210, size.height * 0.1323529);
    path_0.close();

    Paint paintFill = Paint()..style = PaintingStyle.fill;
    paintFill.color =Color(0xffE0E0E0);
    canvas.drawShadow(path_0, Colors.black45, 2, false);
    canvas.drawPath(path_0, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
