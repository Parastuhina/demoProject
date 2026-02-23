import "dart:math";

import "package:flutter/material.dart";

import "../../utils/app_constants.dart";

/// Reusable dotted circular decoration used in the splash background.
class DotPatternCircle extends StatelessWidget {
  const DotPatternCircle({
    required this.diameter,
    required this.dotRadius,
    required this.dotSpacing,
    required this.color,
    super.key,
  });

  final double diameter;
  final double dotRadius;
  final double dotSpacing;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: diameter,
      height: diameter,
      child: CustomPaint(
        painter: _DotPatternCirclePainter(
          dotRadius: dotRadius,
          dotSpacing: dotSpacing,
          color: color,
        ),
      ),
    );
  }
}

class _DotPatternCirclePainter extends CustomPainter {
  const _DotPatternCirclePainter({
    required this.dotRadius,
    required this.dotSpacing,
    required this.color,
  });

  final double dotRadius;
  final double dotSpacing;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final paint = Paint()..style = PaintingStyle.fill;

    double y = dotSpacing / 2;
    while (y < size.height) {
      double x = dotSpacing / 2;
      while (x < size.width) {
        final dotPosition = Offset(x, y);
        final distance = (dotPosition - center).distance;
        if (distance <= radius) {
          final fade = max(0.0, 1.0 - (distance / radius));
          paint.color = color.withOpacity(fade * AppConstants.dotFadeOpacity);
          canvas.drawCircle(dotPosition, dotRadius, paint);
        }
        x += dotSpacing;
      }
      y += dotSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant _DotPatternCirclePainter oldDelegate) {
    return oldDelegate.dotRadius != dotRadius ||
        oldDelegate.dotSpacing != dotSpacing ||
        oldDelegate.color != color;
  }
}

