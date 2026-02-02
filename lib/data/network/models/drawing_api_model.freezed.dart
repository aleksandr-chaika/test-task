// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawing_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DrawingApiModel _$DrawingApiModelFromJson(Map<String, dynamic> json) {
  return _DrawingApiModel.fromJson(json);
}

/// @nodoc
mixin _$DrawingApiModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get base64Image => throw _privateConstructorUsedError;
  String get thumbnailBase64 => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DrawingApiModelCopyWith<DrawingApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingApiModelCopyWith<$Res> {
  factory $DrawingApiModelCopyWith(
          DrawingApiModel value, $Res Function(DrawingApiModel) then) =
      _$DrawingApiModelCopyWithImpl<$Res, DrawingApiModel>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String title,
      String base64Image,
      String thumbnailBase64,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$DrawingApiModelCopyWithImpl<$Res, $Val extends DrawingApiModel>
    implements $DrawingApiModelCopyWith<$Res> {
  _$DrawingApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? base64Image = null,
    Object? thumbnailBase64 = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      base64Image: null == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailBase64: null == thumbnailBase64
          ? _value.thumbnailBase64
          : thumbnailBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DrawingApiModelImplCopyWith<$Res>
    implements $DrawingApiModelCopyWith<$Res> {
  factory _$$DrawingApiModelImplCopyWith(_$DrawingApiModelImpl value,
          $Res Function(_$DrawingApiModelImpl) then) =
      __$$DrawingApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String title,
      String base64Image,
      String thumbnailBase64,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$DrawingApiModelImplCopyWithImpl<$Res>
    extends _$DrawingApiModelCopyWithImpl<$Res, _$DrawingApiModelImpl>
    implements _$$DrawingApiModelImplCopyWith<$Res> {
  __$$DrawingApiModelImplCopyWithImpl(
      _$DrawingApiModelImpl _value, $Res Function(_$DrawingApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? base64Image = null,
    Object? thumbnailBase64 = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DrawingApiModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      base64Image: null == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailBase64: null == thumbnailBase64
          ? _value.thumbnailBase64
          : thumbnailBase64 // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DrawingApiModelImpl implements _DrawingApiModel {
  const _$DrawingApiModelImpl(
      {required this.id,
      required this.userId,
      required this.title,
      required this.base64Image,
      required this.thumbnailBase64,
      required this.createdAt,
      required this.updatedAt});

  factory _$DrawingApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DrawingApiModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String title;
  @override
  final String base64Image;
  @override
  final String thumbnailBase64;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'DrawingApiModel(id: $id, userId: $userId, title: $title, base64Image: $base64Image, thumbnailBase64: $thumbnailBase64, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawingApiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image) &&
            (identical(other.thumbnailBase64, thumbnailBase64) ||
                other.thumbnailBase64 == thumbnailBase64) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, base64Image,
      thumbnailBase64, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawingApiModelImplCopyWith<_$DrawingApiModelImpl> get copyWith =>
      __$$DrawingApiModelImplCopyWithImpl<_$DrawingApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DrawingApiModelImplToJson(
      this,
    );
  }
}

abstract class _DrawingApiModel implements DrawingApiModel {
  const factory _DrawingApiModel(
      {required final String id,
      required final String userId,
      required final String title,
      required final String base64Image,
      required final String thumbnailBase64,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$DrawingApiModelImpl;

  factory _DrawingApiModel.fromJson(Map<String, dynamic> json) =
      _$DrawingApiModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get title;
  @override
  String get base64Image;
  @override
  String get thumbnailBase64;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DrawingApiModelImplCopyWith<_$DrawingApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
