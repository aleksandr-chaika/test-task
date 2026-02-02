import 'dart:typed_data';
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../view/drawing_canvas.dart';

part 'editor_events.freezed.dart';

@freezed
class EditorEvent with _$EditorEvent {
  const factory EditorEvent.started({String? drawingId}) = EditorStarted;
  const factory EditorEvent.brushSelected() = EditorBrushSelected;
  const factory EditorEvent.eraserSelected() = EditorEraserSelected;
  const factory EditorEvent.colorChanged(Color color) = EditorColorChanged;
  const factory EditorEvent.brushSizeChanged(double size) = EditorBrushSizeChanged;
  const factory EditorEvent.strokeAdded(Stroke stroke) = EditorStrokeAdded;
  const factory EditorEvent.undoRequested() = EditorUndoRequested;
  const factory EditorEvent.clearRequested() = EditorClearRequested;
  const factory EditorEvent.imageImported(Uint8List imageData) = EditorImageImported;
  const factory EditorEvent.saveRequested(String title, {Uint8List? renderedImage}) = EditorSaveRequested;
  const factory EditorEvent.exportRequested() = EditorExportRequested;
}
