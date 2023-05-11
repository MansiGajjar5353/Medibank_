import 'dart:math';

import 'package:flutter/material.dart';

class SemiCircleImage extends StatelessWidget {
  final String imageUrl;
  final double radius;

  SemiCircleImage({required this.imageUrl, required this.radius});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SemiCirclePainter(radius: radius),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          width: radius * 2,
          height: radius * 2,
        ),
      ),
    );
  }
}

class SemiCirclePainter extends CustomPainter {
  final double radius;

  SemiCirclePainter({required this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(radius, radius);
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      pi,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(SemiCirclePainter oldDelegate) => false;
}