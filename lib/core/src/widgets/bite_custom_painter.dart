import 'package:flutter/material.dart';

class BiteShapeCustomPaint extends CustomPainter {
  final Color borderColor;

  BiteShapeCustomPaint({required this.borderColor});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1641407, size.height * 0.06481481);
    path_0.cubicTo(
        size.width * 0.1195120,
        size.height * 0.06481481,
        size.width * 0.08333333,
        size.height * 0.08958463,
        size.width * 0.08333333,
        size.height * 0.1201398);
    path_0.lineTo(size.width * 0.08333333, size.height * 0.8428231);
    path_0.cubicTo(
        size.width * 0.08333333,
        size.height * 0.8733787,
        size.width * 0.1195120,
        size.height * 0.8981481,
        size.width * 0.1641407,
        size.height * 0.8981481);
    path_0.lineTo(size.width * 0.8358519, size.height * 0.8981481);
    path_0.cubicTo(
        size.width * 0.8804806,
        size.height * 0.8981481,
        size.width * 0.9166593,
        size.height * 0.8733787,
        size.width * 0.9166593,
        size.height * 0.8428231);
    path_0.lineTo(size.width * 0.9166593, size.height * 0.1408880);
    path_0.cubicTo(
        size.width * 0.9166204,
        size.height * 0.1408926,
        size.width * 0.9164352,
        size.height * 0.1409157,
        size.width * 0.9160565,
        size.height * 0.1410343);
    path_0.cubicTo(
        size.width * 0.9156028,
        size.height * 0.1411769,
        size.width * 0.9150259,
        size.height * 0.1414056,
        size.width * 0.9143046,
        size.height * 0.1417361);
    path_0.cubicTo(
        size.width * 0.9129944,
        size.height * 0.1423361,
        size.width * 0.9114519,
        size.height * 0.1431546,
        size.width * 0.9096037,
        size.height * 0.1441343);
    path_0.lineTo(size.width * 0.9089713, size.height * 0.1444694);
    path_0.cubicTo(
        size.width * 0.9047926,
        size.height * 0.1466824,
        size.width * 0.8993907,
        size.height * 0.1494917,
        size.width * 0.8931194,
        size.height * 0.1515259);
    path_0.cubicTo(
        size.width * 0.8868213,
        size.height * 0.1535685,
        size.width * 0.8795074,
        size.height * 0.1548769,
        size.width * 0.8715130,
        size.height * 0.1539935);
    path_0.cubicTo(
        size.width * 0.8638907,
        size.height * 0.1531519,
        size.width * 0.8559426,
        size.height * 0.1503509,
        size.width * 0.8478713,
        size.height * 0.1446870);
    path_0.cubicTo(
        size.width * 0.8404361,
        size.height * 0.1467917,
        size.width * 0.8336491,
        size.height * 0.1468944,
        size.width * 0.8275917,
        size.height * 0.1455028);
    path_0.cubicTo(
        size.width * 0.8211509,
        size.height * 0.1440241,
        size.width * 0.8048435,
        size.height * 0.1394574,
        size.width * 0.8004981,
        size.height * 0.1357000);
    path_0.cubicTo(
        size.width * 0.7923472,
        size.height * 0.1286500,
        size.width * 0.7929231,
        size.height * 0.1201398,
        size.width * 0.7959028,
        size.height * 0.1131500);
    path_0.cubicTo(
        size.width * 0.7718602,
        size.height * 0.1120528,
        size.width * 0.7565815,
        size.height * 0.1036611,
        size.width * 0.7473593,
        size.height * 0.09375185);
    path_0.cubicTo(
        size.width * 0.7379639,
        size.height * 0.08365630,
        size.width * 0.7348426,
        size.height * 0.07199491,
        size.width * 0.7348426,
        size.height * 0.06481481);
    path_0.lineTo(size.width * 0.1641407, size.height * 0.06481481);
    path_0.close();

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1641407, size.height * 0.06481481);
    path_1.cubicTo(
        size.width * 0.1195120,
        size.height * 0.06481481,
        size.width * 0.08333333,
        size.height * 0.08958463,
        size.width * 0.08333333,
        size.height * 0.1201398);
    path_1.lineTo(size.width * 0.08333333, size.height * 0.8428231);
    path_1.cubicTo(
        size.width * 0.08333333,
        size.height * 0.8733787,
        size.width * 0.1195120,
        size.height * 0.8981481,
        size.width * 0.1641407,
        size.height * 0.8981481);
    path_1.lineTo(size.width * 0.8358519, size.height * 0.8981481);
    path_1.cubicTo(
        size.width * 0.8804806,
        size.height * 0.8981481,
        size.width * 0.9166593,
        size.height * 0.8733787,
        size.width * 0.9166593,
        size.height * 0.8428231);
    path_1.lineTo(size.width * 0.9166593, size.height * 0.1408880);
    path_1.cubicTo(
        size.width * 0.9166204,
        size.height * 0.1408926,
        size.width * 0.9164352,
        size.height * 0.1409157,
        size.width * 0.9160565,
        size.height * 0.1410343);
    path_1.cubicTo(
        size.width * 0.9156028,
        size.height * 0.1411769,
        size.width * 0.9150259,
        size.height * 0.1414056,
        size.width * 0.9143046,
        size.height * 0.1417361);
    path_1.cubicTo(
        size.width * 0.9129944,
        size.height * 0.1423361,
        size.width * 0.9114519,
        size.height * 0.1431546,
        size.width * 0.9096037,
        size.height * 0.1441343);
    path_1.lineTo(size.width * 0.9089713, size.height * 0.1444694);
    path_1.cubicTo(
        size.width * 0.9047926,
        size.height * 0.1466824,
        size.width * 0.8993907,
        size.height * 0.1494917,
        size.width * 0.8931194,
        size.height * 0.1515259);
    path_1.cubicTo(
        size.width * 0.8868213,
        size.height * 0.1535685,
        size.width * 0.8795074,
        size.height * 0.1548769,
        size.width * 0.8715130,
        size.height * 0.1539935);
    path_1.cubicTo(
        size.width * 0.8638907,
        size.height * 0.1531519,
        size.width * 0.8559426,
        size.height * 0.1503509,
        size.width * 0.8478713,
        size.height * 0.1446870);
    path_1.cubicTo(
        size.width * 0.8404361,
        size.height * 0.1467917,
        size.width * 0.8336491,
        size.height * 0.1468944,
        size.width * 0.8275917,
        size.height * 0.1455028);
    path_1.cubicTo(
        size.width * 0.8211509,
        size.height * 0.1440241,
        size.width * 0.8048435,
        size.height * 0.1394574,
        size.width * 0.8004981,
        size.height * 0.1357000);
    path_1.cubicTo(
        size.width * 0.7923472,
        size.height * 0.1286500,
        size.width * 0.7929231,
        size.height * 0.1201398,
        size.width * 0.7959028,
        size.height * 0.1131500);
    path_1.cubicTo(
        size.width * 0.7718602,
        size.height * 0.1120528,
        size.width * 0.7565815,
        size.height * 0.1036611,
        size.width * 0.7473593,
        size.height * 0.09375185);
    path_1.cubicTo(
        size.width * 0.7379639,
        size.height * 0.08365630,
        size.width * 0.7348426,
        size.height * 0.07199491,
        size.width * 0.7348426,
        size.height * 0.06481481);
    path_1.lineTo(size.width * 0.1641407, size.height * 0.06481481);
    path_1.close();

    Paint paintFillOne = Paint()..style = PaintingStyle.fill;
    paintFillOne.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paintFillOne);

    Paint paintStroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paintStroke.color = borderColor.withOpacity(1.0);
    canvas.drawPath(path_1, paintStroke);

    Paint paintFill = Paint()..style = PaintingStyle.fill;
    paintFill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_1, paintFill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
class EmptyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
