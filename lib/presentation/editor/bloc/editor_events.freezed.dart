// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorEventCopyWith<$Res> {
  factory $EditorEventCopyWith(
          EditorEvent value, $Res Function(EditorEvent) then) =
      _$EditorEventCopyWithImpl<$Res, EditorEvent>;
}

/// @nodoc
class _$EditorEventCopyWithImpl<$Res, $Val extends EditorEvent>
    implements $EditorEventCopyWith<$Res> {
  _$EditorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditorStartedImplCopyWith<$Res> {
  factory _$$EditorStartedImplCopyWith(
          _$EditorStartedImpl value, $Res Function(_$EditorStartedImpl) then) =
      __$$EditorStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? drawingId});
}

/// @nodoc
class __$$EditorStartedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorStartedImpl>
    implements _$$EditorStartedImplCopyWith<$Res> {
  __$$EditorStartedImplCopyWithImpl(
      _$EditorStartedImpl _value, $Res Function(_$EditorStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drawingId = freezed,
  }) {
    return _then(_$EditorStartedImpl(
      drawingId: freezed == drawingId
          ? _value.drawingId
          : drawingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditorStartedImpl implements EditorStarted {
  const _$EditorStartedImpl({this.drawingId});

  @override
  final String? drawingId;

  @override
  String toString() {
    return 'EditorEvent.started(drawingId: $drawingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorStartedImpl &&
            (identical(other.drawingId, drawingId) ||
                other.drawingId == drawingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, drawingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorStartedImplCopyWith<_$EditorStartedImpl> get copyWith =>
      __$$EditorStartedImplCopyWithImpl<_$EditorStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return started(drawingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return started?.call(drawingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(drawingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class EditorStarted implements EditorEvent {
  const factory EditorStarted({final String? drawingId}) = _$EditorStartedImpl;

  String? get drawingId;
  @JsonKey(ignore: true)
  _$$EditorStartedImplCopyWith<_$EditorStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorBrushSelectedImplCopyWith<$Res> {
  factory _$$EditorBrushSelectedImplCopyWith(_$EditorBrushSelectedImpl value,
          $Res Function(_$EditorBrushSelectedImpl) then) =
      __$$EditorBrushSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditorBrushSelectedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorBrushSelectedImpl>
    implements _$$EditorBrushSelectedImplCopyWith<$Res> {
  __$$EditorBrushSelectedImplCopyWithImpl(_$EditorBrushSelectedImpl _value,
      $Res Function(_$EditorBrushSelectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditorBrushSelectedImpl implements EditorBrushSelected {
  const _$EditorBrushSelectedImpl();

  @override
  String toString() {
    return 'EditorEvent.brushSelected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorBrushSelectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return brushSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return brushSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (brushSelected != null) {
      return brushSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return brushSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return brushSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (brushSelected != null) {
      return brushSelected(this);
    }
    return orElse();
  }
}

abstract class EditorBrushSelected implements EditorEvent {
  const factory EditorBrushSelected() = _$EditorBrushSelectedImpl;
}

/// @nodoc
abstract class _$$EditorEraserSelectedImplCopyWith<$Res> {
  factory _$$EditorEraserSelectedImplCopyWith(_$EditorEraserSelectedImpl value,
          $Res Function(_$EditorEraserSelectedImpl) then) =
      __$$EditorEraserSelectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditorEraserSelectedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorEraserSelectedImpl>
    implements _$$EditorEraserSelectedImplCopyWith<$Res> {
  __$$EditorEraserSelectedImplCopyWithImpl(_$EditorEraserSelectedImpl _value,
      $Res Function(_$EditorEraserSelectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditorEraserSelectedImpl implements EditorEraserSelected {
  const _$EditorEraserSelectedImpl();

  @override
  String toString() {
    return 'EditorEvent.eraserSelected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorEraserSelectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return eraserSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return eraserSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (eraserSelected != null) {
      return eraserSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return eraserSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return eraserSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (eraserSelected != null) {
      return eraserSelected(this);
    }
    return orElse();
  }
}

abstract class EditorEraserSelected implements EditorEvent {
  const factory EditorEraserSelected() = _$EditorEraserSelectedImpl;
}

/// @nodoc
abstract class _$$EditorColorChangedImplCopyWith<$Res> {
  factory _$$EditorColorChangedImplCopyWith(_$EditorColorChangedImpl value,
          $Res Function(_$EditorColorChangedImpl) then) =
      __$$EditorColorChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$EditorColorChangedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorColorChangedImpl>
    implements _$$EditorColorChangedImplCopyWith<$Res> {
  __$$EditorColorChangedImplCopyWithImpl(_$EditorColorChangedImpl _value,
      $Res Function(_$EditorColorChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$EditorColorChangedImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$EditorColorChangedImpl implements EditorColorChanged {
  const _$EditorColorChangedImpl(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'EditorEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorColorChangedImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorColorChangedImplCopyWith<_$EditorColorChangedImpl> get copyWith =>
      __$$EditorColorChangedImplCopyWithImpl<_$EditorColorChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return colorChanged?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return colorChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class EditorColorChanged implements EditorEvent {
  const factory EditorColorChanged(final Color color) =
      _$EditorColorChangedImpl;

  Color get color;
  @JsonKey(ignore: true)
  _$$EditorColorChangedImplCopyWith<_$EditorColorChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorBrushSizeChangedImplCopyWith<$Res> {
  factory _$$EditorBrushSizeChangedImplCopyWith(
          _$EditorBrushSizeChangedImpl value,
          $Res Function(_$EditorBrushSizeChangedImpl) then) =
      __$$EditorBrushSizeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double size});
}

/// @nodoc
class __$$EditorBrushSizeChangedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorBrushSizeChangedImpl>
    implements _$$EditorBrushSizeChangedImplCopyWith<$Res> {
  __$$EditorBrushSizeChangedImplCopyWithImpl(
      _$EditorBrushSizeChangedImpl _value,
      $Res Function(_$EditorBrushSizeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$EditorBrushSizeChangedImpl(
      null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$EditorBrushSizeChangedImpl implements EditorBrushSizeChanged {
  const _$EditorBrushSizeChangedImpl(this.size);

  @override
  final double size;

  @override
  String toString() {
    return 'EditorEvent.brushSizeChanged(size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorBrushSizeChangedImpl &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorBrushSizeChangedImplCopyWith<_$EditorBrushSizeChangedImpl>
      get copyWith => __$$EditorBrushSizeChangedImplCopyWithImpl<
          _$EditorBrushSizeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return brushSizeChanged(size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return brushSizeChanged?.call(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (brushSizeChanged != null) {
      return brushSizeChanged(size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return brushSizeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return brushSizeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (brushSizeChanged != null) {
      return brushSizeChanged(this);
    }
    return orElse();
  }
}

abstract class EditorBrushSizeChanged implements EditorEvent {
  const factory EditorBrushSizeChanged(final double size) =
      _$EditorBrushSizeChangedImpl;

  double get size;
  @JsonKey(ignore: true)
  _$$EditorBrushSizeChangedImplCopyWith<_$EditorBrushSizeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorStrokeAddedImplCopyWith<$Res> {
  factory _$$EditorStrokeAddedImplCopyWith(_$EditorStrokeAddedImpl value,
          $Res Function(_$EditorStrokeAddedImpl) then) =
      __$$EditorStrokeAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stroke stroke});
}

/// @nodoc
class __$$EditorStrokeAddedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorStrokeAddedImpl>
    implements _$$EditorStrokeAddedImplCopyWith<$Res> {
  __$$EditorStrokeAddedImplCopyWithImpl(_$EditorStrokeAddedImpl _value,
      $Res Function(_$EditorStrokeAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stroke = null,
  }) {
    return _then(_$EditorStrokeAddedImpl(
      null == stroke
          ? _value.stroke
          : stroke // ignore: cast_nullable_to_non_nullable
              as Stroke,
    ));
  }
}

/// @nodoc

class _$EditorStrokeAddedImpl implements EditorStrokeAdded {
  const _$EditorStrokeAddedImpl(this.stroke);

  @override
  final Stroke stroke;

  @override
  String toString() {
    return 'EditorEvent.strokeAdded(stroke: $stroke)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorStrokeAddedImpl &&
            (identical(other.stroke, stroke) || other.stroke == stroke));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stroke);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorStrokeAddedImplCopyWith<_$EditorStrokeAddedImpl> get copyWith =>
      __$$EditorStrokeAddedImplCopyWithImpl<_$EditorStrokeAddedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return strokeAdded(stroke);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return strokeAdded?.call(stroke);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (strokeAdded != null) {
      return strokeAdded(stroke);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return strokeAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return strokeAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (strokeAdded != null) {
      return strokeAdded(this);
    }
    return orElse();
  }
}

abstract class EditorStrokeAdded implements EditorEvent {
  const factory EditorStrokeAdded(final Stroke stroke) =
      _$EditorStrokeAddedImpl;

  Stroke get stroke;
  @JsonKey(ignore: true)
  _$$EditorStrokeAddedImplCopyWith<_$EditorStrokeAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorUndoRequestedImplCopyWith<$Res> {
  factory _$$EditorUndoRequestedImplCopyWith(_$EditorUndoRequestedImpl value,
          $Res Function(_$EditorUndoRequestedImpl) then) =
      __$$EditorUndoRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditorUndoRequestedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorUndoRequestedImpl>
    implements _$$EditorUndoRequestedImplCopyWith<$Res> {
  __$$EditorUndoRequestedImplCopyWithImpl(_$EditorUndoRequestedImpl _value,
      $Res Function(_$EditorUndoRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditorUndoRequestedImpl implements EditorUndoRequested {
  const _$EditorUndoRequestedImpl();

  @override
  String toString() {
    return 'EditorEvent.undoRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorUndoRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return undoRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return undoRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (undoRequested != null) {
      return undoRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return undoRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return undoRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (undoRequested != null) {
      return undoRequested(this);
    }
    return orElse();
  }
}

abstract class EditorUndoRequested implements EditorEvent {
  const factory EditorUndoRequested() = _$EditorUndoRequestedImpl;
}

/// @nodoc
abstract class _$$EditorClearRequestedImplCopyWith<$Res> {
  factory _$$EditorClearRequestedImplCopyWith(_$EditorClearRequestedImpl value,
          $Res Function(_$EditorClearRequestedImpl) then) =
      __$$EditorClearRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditorClearRequestedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorClearRequestedImpl>
    implements _$$EditorClearRequestedImplCopyWith<$Res> {
  __$$EditorClearRequestedImplCopyWithImpl(_$EditorClearRequestedImpl _value,
      $Res Function(_$EditorClearRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditorClearRequestedImpl implements EditorClearRequested {
  const _$EditorClearRequestedImpl();

  @override
  String toString() {
    return 'EditorEvent.clearRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorClearRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return clearRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return clearRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (clearRequested != null) {
      return clearRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return clearRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return clearRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (clearRequested != null) {
      return clearRequested(this);
    }
    return orElse();
  }
}

abstract class EditorClearRequested implements EditorEvent {
  const factory EditorClearRequested() = _$EditorClearRequestedImpl;
}

/// @nodoc
abstract class _$$EditorImageImportedImplCopyWith<$Res> {
  factory _$$EditorImageImportedImplCopyWith(_$EditorImageImportedImpl value,
          $Res Function(_$EditorImageImportedImpl) then) =
      __$$EditorImageImportedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List imageData});
}

/// @nodoc
class __$$EditorImageImportedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorImageImportedImpl>
    implements _$$EditorImageImportedImplCopyWith<$Res> {
  __$$EditorImageImportedImplCopyWithImpl(_$EditorImageImportedImpl _value,
      $Res Function(_$EditorImageImportedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageData = null,
  }) {
    return _then(_$EditorImageImportedImpl(
      null == imageData
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$EditorImageImportedImpl implements EditorImageImported {
  const _$EditorImageImportedImpl(this.imageData);

  @override
  final Uint8List imageData;

  @override
  String toString() {
    return 'EditorEvent.imageImported(imageData: $imageData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorImageImportedImpl &&
            const DeepCollectionEquality().equals(other.imageData, imageData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorImageImportedImplCopyWith<_$EditorImageImportedImpl> get copyWith =>
      __$$EditorImageImportedImplCopyWithImpl<_$EditorImageImportedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return imageImported(imageData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return imageImported?.call(imageData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (imageImported != null) {
      return imageImported(imageData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return imageImported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return imageImported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (imageImported != null) {
      return imageImported(this);
    }
    return orElse();
  }
}

abstract class EditorImageImported implements EditorEvent {
  const factory EditorImageImported(final Uint8List imageData) =
      _$EditorImageImportedImpl;

  Uint8List get imageData;
  @JsonKey(ignore: true)
  _$$EditorImageImportedImplCopyWith<_$EditorImageImportedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorSaveRequestedImplCopyWith<$Res> {
  factory _$$EditorSaveRequestedImplCopyWith(_$EditorSaveRequestedImpl value,
          $Res Function(_$EditorSaveRequestedImpl) then) =
      __$$EditorSaveRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, Uint8List? renderedImage});
}

/// @nodoc
class __$$EditorSaveRequestedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorSaveRequestedImpl>
    implements _$$EditorSaveRequestedImplCopyWith<$Res> {
  __$$EditorSaveRequestedImplCopyWithImpl(_$EditorSaveRequestedImpl _value,
      $Res Function(_$EditorSaveRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? renderedImage = freezed,
  }) {
    return _then(_$EditorSaveRequestedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      renderedImage: freezed == renderedImage
          ? _value.renderedImage
          : renderedImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$EditorSaveRequestedImpl implements EditorSaveRequested {
  const _$EditorSaveRequestedImpl(this.title, {this.renderedImage});

  @override
  final String title;
  @override
  final Uint8List? renderedImage;

  @override
  String toString() {
    return 'EditorEvent.saveRequested(title: $title, renderedImage: $renderedImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorSaveRequestedImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.renderedImage, renderedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(renderedImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorSaveRequestedImplCopyWith<_$EditorSaveRequestedImpl> get copyWith =>
      __$$EditorSaveRequestedImplCopyWithImpl<_$EditorSaveRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return saveRequested(title, renderedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return saveRequested?.call(title, renderedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (saveRequested != null) {
      return saveRequested(title, renderedImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return saveRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return saveRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (saveRequested != null) {
      return saveRequested(this);
    }
    return orElse();
  }
}

abstract class EditorSaveRequested implements EditorEvent {
  const factory EditorSaveRequested(final String title,
      {final Uint8List? renderedImage}) = _$EditorSaveRequestedImpl;

  String get title;
  Uint8List? get renderedImage;
  @JsonKey(ignore: true)
  _$$EditorSaveRequestedImplCopyWith<_$EditorSaveRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditorExportRequestedImplCopyWith<$Res> {
  factory _$$EditorExportRequestedImplCopyWith(
          _$EditorExportRequestedImpl value,
          $Res Function(_$EditorExportRequestedImpl) then) =
      __$$EditorExportRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditorExportRequestedImplCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res, _$EditorExportRequestedImpl>
    implements _$$EditorExportRequestedImplCopyWith<$Res> {
  __$$EditorExportRequestedImplCopyWithImpl(_$EditorExportRequestedImpl _value,
      $Res Function(_$EditorExportRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditorExportRequestedImpl implements EditorExportRequested {
  const _$EditorExportRequestedImpl();

  @override
  String toString() {
    return 'EditorEvent.exportRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorExportRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? drawingId) started,
    required TResult Function() brushSelected,
    required TResult Function() eraserSelected,
    required TResult Function(Color color) colorChanged,
    required TResult Function(double size) brushSizeChanged,
    required TResult Function(Stroke stroke) strokeAdded,
    required TResult Function() undoRequested,
    required TResult Function() clearRequested,
    required TResult Function(Uint8List imageData) imageImported,
    required TResult Function(String title, Uint8List? renderedImage)
        saveRequested,
    required TResult Function() exportRequested,
  }) {
    return exportRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? drawingId)? started,
    TResult? Function()? brushSelected,
    TResult? Function()? eraserSelected,
    TResult? Function(Color color)? colorChanged,
    TResult? Function(double size)? brushSizeChanged,
    TResult? Function(Stroke stroke)? strokeAdded,
    TResult? Function()? undoRequested,
    TResult? Function()? clearRequested,
    TResult? Function(Uint8List imageData)? imageImported,
    TResult? Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult? Function()? exportRequested,
  }) {
    return exportRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? drawingId)? started,
    TResult Function()? brushSelected,
    TResult Function()? eraserSelected,
    TResult Function(Color color)? colorChanged,
    TResult Function(double size)? brushSizeChanged,
    TResult Function(Stroke stroke)? strokeAdded,
    TResult Function()? undoRequested,
    TResult Function()? clearRequested,
    TResult Function(Uint8List imageData)? imageImported,
    TResult Function(String title, Uint8List? renderedImage)? saveRequested,
    TResult Function()? exportRequested,
    required TResult orElse(),
  }) {
    if (exportRequested != null) {
      return exportRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditorStarted value) started,
    required TResult Function(EditorBrushSelected value) brushSelected,
    required TResult Function(EditorEraserSelected value) eraserSelected,
    required TResult Function(EditorColorChanged value) colorChanged,
    required TResult Function(EditorBrushSizeChanged value) brushSizeChanged,
    required TResult Function(EditorStrokeAdded value) strokeAdded,
    required TResult Function(EditorUndoRequested value) undoRequested,
    required TResult Function(EditorClearRequested value) clearRequested,
    required TResult Function(EditorImageImported value) imageImported,
    required TResult Function(EditorSaveRequested value) saveRequested,
    required TResult Function(EditorExportRequested value) exportRequested,
  }) {
    return exportRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditorStarted value)? started,
    TResult? Function(EditorBrushSelected value)? brushSelected,
    TResult? Function(EditorEraserSelected value)? eraserSelected,
    TResult? Function(EditorColorChanged value)? colorChanged,
    TResult? Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult? Function(EditorStrokeAdded value)? strokeAdded,
    TResult? Function(EditorUndoRequested value)? undoRequested,
    TResult? Function(EditorClearRequested value)? clearRequested,
    TResult? Function(EditorImageImported value)? imageImported,
    TResult? Function(EditorSaveRequested value)? saveRequested,
    TResult? Function(EditorExportRequested value)? exportRequested,
  }) {
    return exportRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditorStarted value)? started,
    TResult Function(EditorBrushSelected value)? brushSelected,
    TResult Function(EditorEraserSelected value)? eraserSelected,
    TResult Function(EditorColorChanged value)? colorChanged,
    TResult Function(EditorBrushSizeChanged value)? brushSizeChanged,
    TResult Function(EditorStrokeAdded value)? strokeAdded,
    TResult Function(EditorUndoRequested value)? undoRequested,
    TResult Function(EditorClearRequested value)? clearRequested,
    TResult Function(EditorImageImported value)? imageImported,
    TResult Function(EditorSaveRequested value)? saveRequested,
    TResult Function(EditorExportRequested value)? exportRequested,
    required TResult orElse(),
  }) {
    if (exportRequested != null) {
      return exportRequested(this);
    }
    return orElse();
  }
}

abstract class EditorExportRequested implements EditorEvent {
  const factory EditorExportRequested() = _$EditorExportRequestedImpl;
}
