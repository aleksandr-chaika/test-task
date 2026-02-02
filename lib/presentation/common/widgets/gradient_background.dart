import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../resources/colors.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.backgroundGradient,
        ),
      ),
      child: Stack(
        children: [

          const Positioned.fill(
            child: CurvedLinesPattern(),
          ),

          child,
        ],
      ),
    );
  }
}

class CurvedLinesPattern extends StatelessWidget {
  const CurvedLinesPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CurvedLinesPainter(),
      size: Size.infinite,
    );
  }
}

class _CurvedLinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width * 0.3;
    final centerY = size.height * 0.7;


    for (int i = 0; i < 40; i++) {
      final radius = 100.0 + (i * 25);
      final opacity = 0.3 - (i * 0.005);
      if (opacity <= 0) continue;

      final paint = Paint()
        ..color = _getGradientColor(i / 40).withValues(alpha: opacity.clamp(0.05, 0.3))
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5;

      final rect = Rect.fromCircle(
        center: Offset(centerX, centerY),
        radius: radius,
      );


      canvas.drawArc(
        rect,
        -math.pi * 0.8,
        math.pi * 1.2,
        false,
        paint,
      );
    }
  }

  Color _getGradientColor(double t) {

    return Color.lerp(
      AppColors.gradientPurple,
      AppColors.gradientTeal,
      t,
    )!;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
