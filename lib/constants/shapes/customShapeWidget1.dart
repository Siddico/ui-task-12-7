import 'package:flutter/material.dart';

class CustomShapeWidget extends StatelessWidget {
  final double width;
  final double height;

  const CustomShapeWidget({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: CustomBackgroundPainter(),
    );
  }
}

class CustomBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6764421, size.height * 0.2936047);
    path_0.cubicTo(
      size.width * 0.7571439,
      size.height * 0.06337209,
      size.width * 1.002465,
      size.height * 0.001937983,
      size.width * 1.115035,
      0,
    );
    path_0.cubicTo(
      size.width * 1.365035,
      size.height * 0.03488372,
      size.width * 1.426447,
      size.height * 0.6337209,
      size.width * 1.027325,
      size.height * 0.5784884,
    );
    path_0.cubicTo(
      size.width * 0.6282035,
      size.height * 0.5232558,
      size.width * 0.6764421,
      size.height * 0.7063953,
      size.width * 0.4790737,
      size.height * 0.9156977,
    );
    path_0.cubicTo(
      size.width * 0.2817053,
      size.height * 1.125000,
      size.width * -0.08671605,
      size.height * 0.9040698,
      size.width * 0.01854711,
      size.height * 0.6569767,
    );
    path_0.cubicTo(
      size.width * 0.1238105,
      size.height * 0.4098837,
      size.width * 0.5755649,
      size.height * 0.5813953,
      size.width * 0.6764421,
      size.height * 0.2936047,
    );
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xffE33C64).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
