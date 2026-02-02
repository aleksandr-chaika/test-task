// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'editor_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditorState {
  EditorTool get currentTool => throw _privateConstructorUsedError;
  Color get currentColor => throw _privateConstructorUsedError;
  double get brushSize => throw _privateConstructorUsedError;
  List<Stroke> get strokes => throw _privateConstructorUsedError;
  Uint8List? get backgroundImage => throw _privateConstructorUsedError;
  String? get existingDrawingId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorStateCopyWith<EditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(
          EditorState value, $Res Function(EditorState) then) =
      _$EditorStateCopyWithImpl<$Res, EditorState>;
  @useResult
  $Res call(
      {EditorTool currentTool,
      Color currentColor,
      double brushSize,
      List<Stroke> strokes,
      Uint8List? backgroundImage,
      String? existingDrawingId,
      bool isLoading,
      bool isSaving,
      bool isSaved,
      String? errorMessage});
}

/// @nodoc
class _$EditorStateCopyWithImpl<$Res, $Val extends EditorState>
    implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTool = null,
    Object? currentColor = null,
    Object? brushSize = null,
    Object? strokes = null,
    Object? backgroundImage = freezed,
    Object? existingDrawingId = freezed,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? isSaved = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      currentTool: null == currentTool
          ? _value.currentTool
          : currentTool // ignore: cast_nullable_to_non_nullable
              as EditorTool,
      currentColor: null == currentColor
          ? _value.currentColor
          : currentColor // ignore: cast_nullable_to_non_nullable
              as Color,
      brushSize: null == brushSize
          ? _value.brushSize
          : brushSize // ignore: cast_nullable_to_non_nullable
              as double,
      strokes: null == strokes
          ? _value.strokes
          : strokes // ignore: cast_nullable_to_non_nullable
              as List<Stroke>,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      existingDrawingId: freezed == existingDrawingId
          ? _value.existingDrawingId
          : existingDrawingId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditorStateImplCopyWith<$Res>
    implements $EditorStateCopyWith<$Res> {
  factory _$$EditorStateImplCopyWith(
          _$EditorStateImpl value, $Res Function(_$EditorStateImpl) then) =
      __$$EditorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EditorTool currentTool,
      Color currentColor,
      double brushSize,
      List<Stroke> strokes,
      Uint8List? backgroundImage,
      String? existingDrawingId,
      bool isLoading,
      bool isSaving,
      bool isSaved,
      String? errorMessage});
}

/// @nodoc
class __$$EditorStateImplCopyWithImpl<$Res>
    extends _$EditorStateCopyWithImpl<$Res, _$EditorStateImpl>
    implements _$$EditorStateImplCopyWith<$Res> {
  __$$EditorStateImplCopyWithImpl(
      _$EditorStateImpl _value, $Res Function(_$EditorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTool = null,
    Object? currentColor = null,
    Object? brushSize = null,
    Object? strokes = null,
    Object? backgroundImage = freezed,
    Object? existingDrawingId = freezed,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? isSaved = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$EditorStateImpl(
      currentTool: null == currentTool
          ? _value.currentTool
          : currentTool // ignore: cast_nullable_to_non_nullable
              as EditorTool,
      currentColor: null == currentColor
          ? _value.currentColor
          : currentColor // ignore: cast_nullable_to_non_nullable
              as Color,
      brushSize: null == brushSize
          ? _value.brushSize
          : brushSize // ignore: cast_nullable_to_non_nullable
              as double,
      strokes: null == strokes
          ? _value._strokes
          : strokes // ignore: cast_nullable_to_non_nullable
              as List<Stroke>,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      existingDrawingId: freezed == existingDrawingId
          ? _value.existingDrawingId
          : existingDrawingId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditorStateImpl implements _EditorState {
  const _$EditorStateImpl(
      {required this.currentTool,
      required this.currentColor,
      required this.brushSize,
      required final List<Stroke> strokes,
      this.backgroundImage,
      this.existingDrawingId,
      this.isLoading = false,
      this.isSaving = false,
      this.isSaved = false,
      this.errorMessage})
      : _strokes = strokes;

  @override
  final EditorTool currentTool;
  @override
  final Color currentColor;
  @override
  final double brushSize;
  final List<Stroke> _strokes;
  @override
  List<Stroke> get strokes {
    if (_strokes is EqualUnmodifiableListView) return _strokes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strokes);
  }

  @override
  final Uint8List? backgroundImage;
  @override
  final String? existingDrawingId;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSaving;
  @override
  @JsonKey()
  final bool isSaved;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'EditorState(currentTool: $currentTool, currentColor: $currentColor, brushSize: $brushSize, strokes: $strokes, backgroundImage: $backgroundImage, existingDrawingId: $existingDrawingId, isLoading: $isLoading, isSaving: $isSaving, isSaved: $isSaved, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditorStateImpl &&
            (identical(other.currentTool, currentTool) ||
                other.currentTool == currentTool) &&
            (identical(other.currentColor, currentColor) ||
                other.currentColor == currentColor) &&
            (identical(other.brushSize, brushSize) ||
                other.brushSize == brushSize) &&
            const DeepCollectionEquality().equals(other._strokes, _strokes) &&
            const DeepCollectionEquality()
                .equals(other.backgroundImage, backgroundImage) &&
            (identical(other.existingDrawingId, existingDrawingId) ||
                other.existingDrawingId == existingDrawingId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentTool,
      currentColor,
      brushSize,
      const DeepCollectionEquality().hash(_strokes),
      const DeepCollectionEquality().hash(backgroundImage),
      existingDrawingId,
      isLoading,
      isSaving,
      isSaved,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditorStateImplCopyWith<_$EditorStateImpl> get copyWith =>
      __$$EditorStateImplCopyWithImpl<_$EditorStateImpl>(this, _$identity);
}

abstract class _EditorState implements EditorState {
  const factory _EditorState(
      {required final EditorTool currentTool,
      required final Color currentColor,
      required final double brushSize,
      required final List<Stroke> strokes,
      final Uint8List? backgroundImage,
      final String? existingDrawingId,
      final bool isLoading,
      final bool isSaving,
      final bool isSaved,
      final String? errorMessage}) = _$EditorStateImpl;

  @override
  EditorTool get currentTool;
  @override
  Color get currentColor;
  @override
  double get brushSize;
  @override
  List<Stroke> get strokes;
  @override
  Uint8List? get backgroundImage;
  @override
  String? get existingDrawingId;
  @override
  bool get isLoading;
  @override
  bool get isSaving;
  @override
  bool get isSaved;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$EditorStateImplCopyWith<_$EditorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
