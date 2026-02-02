import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../../resources/colors.dart';

class Stroke {
  final List<Offset> points;
  final Color color;
  final double width;
  final bool isEraser;

  const Stroke({
    required this.points,
    required this.color,
    required this.width,
    this.isEraser = false,
  });

  Stroke copyWith({
    List<Offset>? points,
    Color? color,
    double? width,
    bool? isEraser,
  }) {
    return Stroke(
      points: points ?? this.points,
      color: color ?? this.color,
      width: width ?? this.width,
      isEraser: isEraser ?? this.isEraser,
    );
  }
}

enum EditorTool { brush, eraser }

class DrawingCanvas extends StatefulWidget {
  final List<Stroke> strokes;
  final Color currentColor;
  final double brushSize;
  final EditorTool currentTool;
  final Uint8List? backgroundImage;
  final Function(Stroke) onStrokeAdded;
  final Function(Stroke) onStrokeUpdated;

  const DrawingCanvas({
    super.key,
    required this.strokes,
    required this.currentColor,
    required this.brushSize,
    required this.currentTool,
    this.backgroundImage,
    required this.onStrokeAdded,
    required this.onStrokeUpdated,
  });

  @override
  State<DrawingCanvas> createState() => DrawingCanvasState();

  static Future<Uint8List?> renderToImage({
    required List<Stroke> strokes,
    required Size size,
    ui.Image? backgroundImage,
  }) async {
    if (size.isEmpty) return null;

    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    canvas.drawRect(rect, Paint()..color = AppColors.canvasBackground);

    if (backgroundImage != null) {
      final srcRect = Rect.fromLTWH(
        0,
        0,
        backgroundImage.width.toDouble(),
        backgroundImage.height.toDouble(),
      );
      canvas.drawImageRect(backgroundImage, srcRect, rect, Paint());
    }

    for (final stroke in strokes) {
      _drawStrokeStatic(canvas, stroke);
    }

    final picture = recorder.endRecording();
    final image = await picture.toImage(size.width.toInt(), size.height.toInt());
    final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

    return byteData?.buffer.asUint8List();
  }

  static void _drawStrokeStatic(Canvas canvas, Stroke stroke) {
    if (stroke.points.isEmpty) return;

    final paint = Paint()
      ..color = stroke.color
      ..strokeWidth = stroke.width
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke;

    if (stroke.isEraser) {
      paint.color = AppColors.canvasBackground;
    }

    if (stroke.points.length == 1) {
      canvas.drawCircle(
        stroke.points.first,
        stroke.width / 2,
        paint..style = PaintingStyle.fill,
      );
      return;
    }

    final path = Path();
    path.moveTo(stroke.points.first.dx, stroke.points.first.dy);

    for (int i = 1; i < stroke.points.length; i++) {
      final p0 = stroke.points[i - 1];
      final p1 = stroke.points[i];
      final midPoint = Offset(
        (p0.dx + p1.dx) / 2,
        (p0.dy + p1.dy) / 2,
      );
      path.quadraticBezierTo(p0.dx, p0.dy, midPoint.dx, midPoint.dy);
    }

    canvas.drawPath(path, paint);
  }
}

class DrawingCanvasState extends State<DrawingCanvas> {
  Stroke? _currentStroke;
  ui.Image? _backgroundImage;

  Size? get canvasSize => context.size;

  ui.Image? get backgroundImage => _backgroundImage;

  @override
  void initState() {
    super.initState();
    _loadBackgroundImage();
  }

  @override
  void didUpdateWidget(covariant DrawingCanvas oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.backgroundImage != oldWidget.backgroundImage) {
      _loadBackgroundImage();
    }
  }

  Future<void> _loadBackgroundImage() async {
    if (widget.backgroundImage == null) {
      setState(() => _backgroundImage = null);
      return;
    }

    final codec = await ui.instantiateImageCodec(widget.backgroundImage!);
    final frame = await codec.getNextFrame();
    setState(() => _backgroundImage = frame.image);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.canvasBackground,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: GestureDetector(
        onPanStart: _onPanStart,
        onPanUpdate: _onPanUpdate,
        onPanEnd: _onPanEnd,
        child: CustomPaint(
          painter: _DrawingPainter(
            strokes: widget.strokes,
            currentStroke: _currentStroke,
            backgroundImage: _backgroundImage,
          ),
          size: Size.infinite,
        ),
      ),
    );
  }

  void _onPanStart(DragStartDetails details) {
    final point = details.localPosition;
    setState(() {
      _currentStroke = Stroke(
        points: [point],
        color: widget.currentTool == EditorTool.eraser
            ? AppColors.canvasBackground
            : widget.currentColor,
        width: widget.brushSize,
        isEraser: widget.currentTool == EditorTool.eraser,
      );
    });
  }

  void _onPanUpdate(DragUpdateDetails details) {
    if (_currentStroke == null) return;

    final point = details.localPosition;
    setState(() {
      _currentStroke = _currentStroke!.copyWith(
        points: [..._currentStroke!.points, point],
      );
    });
  }

  void _onPanEnd(DragEndDetails details) {
    if (_currentStroke != null) {
      widget.onStrokeAdded(_currentStroke!);
      setState(() => _currentStroke = null);
    }
  }
}

class _DrawingPainter extends CustomPainter {
  final List<Stroke> strokes;
  final Stroke? currentStroke;
  final ui.Image? backgroundImage;

  _DrawingPainter({
    required this.strokes,
    this.currentStroke,
    this.backgroundImage,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.saveLayer(rect, Paint());

    canvas.drawRect(rect, Paint()..color = AppColors.canvasBackground);

    if (backgroundImage != null) {
      final srcRect = Rect.fromLTWH(
        0,
        0,
        backgroundImage!.width.toDouble(),
        backgroundImage!.height.toDouble(),
      );
      canvas.drawImageRect(backgroundImage!, srcRect, rect, Paint());
    }

    for (final stroke in strokes) {
      _drawStroke(canvas, stroke);
    }

    if (currentStroke != null) {
      _drawStroke(canvas, currentStroke!);
    }

    canvas.restore();
  }

  void _drawStroke(Canvas canvas, Stroke stroke) {
    if (stroke.points.isEmpty) return;

    final paint = Paint()
      ..color = stroke.color
      ..strokeWidth = stroke.width
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke;

    if (stroke.isEraser) {
      paint.blendMode = BlendMode.clear;
    }

    if (stroke.points.length == 1) {

      canvas.drawCircle(
        stroke.points.first,
        stroke.width / 2,
        paint..style = PaintingStyle.fill,
      );
      return;
    }


    final path = Path();
    path.moveTo(stroke.points.first.dx, stroke.points.first.dy);

    for (int i = 1; i < stroke.points.length; i++) {
      final p0 = stroke.points[i - 1];
      final p1 = stroke.points[i];
      final midPoint = Offset(
        (p0.dx + p1.dx) / 2,
        (p0.dy + p1.dy) / 2,
      );
      path.quadraticBezierTo(p0.dx, p0.dy, midPoint.dx, midPoint.dy);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _DrawingPainter oldDelegate) {
    return strokes != oldDelegate.strokes ||
        currentStroke != oldDelegate.currentStroke ||
        backgroundImage != oldDelegate.backgroundImage;
  }
}
