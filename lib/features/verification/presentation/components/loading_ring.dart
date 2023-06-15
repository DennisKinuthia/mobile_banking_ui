import 'dart:math';

import 'package:flutter/material.dart';

class LoadingRing extends StatelessWidget {
  const LoadingRing({super.key, required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: CustomPaint(
        painter: RingPainter(
          loadingCompletedColor: const Color(0xFFf82c5c),
          loadingInCompletedColor: Colors.white,
          progress: progress,
        ),
      ),
    );
  }
}

class RingPainter extends CustomPainter {
  const RingPainter({
    required this.loadingCompletedColor,
    required this.loadingInCompletedColor,
    required this.progress,
  });

  final Color loadingCompletedColor;
  final Color loadingInCompletedColor;

  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    final notCompleted = progress < 1.0;
    final strokeWidth = size.width / 30.0;
    final center = Offset(size.width / 2.0, size.height / 2.0);
    final radius =
        notCompleted ? (size.width / 5.5) - strokeWidth : size.width / 5.5;
    final color = loadingInCompletedColor;
    if (notCompleted) {
      final backgroundPaint = Paint()
        ..isAntiAlias = true
        ..strokeWidth = strokeWidth
        ..color = color
        ..style = PaintingStyle.stroke;
      canvas.drawCircle(center, radius, backgroundPaint);
    }
    final drawArch = Paint()
      ..isAntiAlias = true
      ..strokeWidth = strokeWidth
      ..color = loadingCompletedColor
      ..style = notCompleted ? PaintingStyle.stroke : PaintingStyle.fill;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      2 * pi * progress,
      false,
      drawArch,
    );
  }

  @override
  bool shouldRepaint(covariant RingPainter oldDelegate) =>
      oldDelegate.progress != progress;
}
