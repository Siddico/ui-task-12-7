import 'package:flutter/material.dart';

// Example: use this inside a widget's build method and replace WIDTH with a double value:
// CustomPaint(
//   size: Size(WIDTH, (WIDTH*5.492063492063492).toDouble()),
//   painter: RPSCustomPainter(),
// );

// Copy the CustomPainter class below.
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2558175, size.height * 0.2318298);
    path_0.cubicTo(
      size.width * 0.3128952,
      size.height * 0.03777139,
      size.width * -0.1401900,
      size.height * 0.01676653,
      size.width * -0.4639952,
      size.height * -0.02285610,
    );
    // Removed invalid NaN control-point cubicTo from the generated path; adjust if you have the correct control points.
    path_0.cubicTo(
      size.width * -1.066025,
      size.height * 0.1380121,
      size.width * -2.289397,
      size.height * 0.4213757,
      size.width * -2.366635,
      size.height * 0.4507370,
    );
    path_0.cubicTo(
      size.width * 1.282573,
      size.height * 0.4313121,
      size.width * 0.1987381,
      size.height * 0.4258873,
      size.width * 0.2558175,
      size.height * 0.2318298,
    );
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff3B9EC0).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
