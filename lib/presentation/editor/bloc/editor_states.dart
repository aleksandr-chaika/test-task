import 'dart:typed_data';
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../view/drawing_canvas.dart';

part 'editor_states.freezed.dart';

@freezed
class EditorState with _$EditorState {
  const factory EditorState({
    required EditorTool currentTool,
    required Color currentColor,
    required double brushSize,
    required List<Stroke> strokes,
    Uint8List? backgroundImage,
    String? existingDrawingId,
    @Default(false) bool isLoading,
    @Default(false) bool isSaving,
    @Default(false) bool isSaved,
    String? errorMessage,
  }) = _EditorState;

  factory EditorState.initial() => const EditorState(
        currentTool: EditorTool.brush,
        currentColor: Color(0xFF000000),
        brushSize: 5.0,
        strokes: [],
      );
}
