// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drawing_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DrawingEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get base64Image => throw _privateConstructorUsedError;
  String get thumbnailBase64 => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DrawingEntityCopyWith<DrawingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingEntityCopyWith<$Res> {
  factory $DrawingEntityCopyWith(
          DrawingEntity value, $Res Function(DrawingEntity) then) =
      _$DrawingEntityCopyWithImpl<$Res, DrawingEntity>;
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
class _$DrawingEntityCopyWithImpl<$Res, $Val extends DrawingEntity>
    implements $DrawingEntityCopyWith<$Res> {
  _$DrawingEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$DrawingEntityImplCopyWith<$Res>
    implements $DrawingEntityCopyWith<$Res> {
  factory _$$DrawingEntityImplCopyWith(
          _$DrawingEntityImpl value, $Res Function(_$DrawingEntityImpl) then) =
      __$$DrawingEntityImplCopyWithImpl<$Res>;
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
class __$$DrawingEntityImplCopyWithImpl<$Res>
    extends _$DrawingEntityCopyWithImpl<$Res, _$DrawingEntityImpl>
    implements _$$DrawingEntityImplCopyWith<$Res> {
  __$$DrawingEntityImplCopyWithImpl(
      _$DrawingEntityImpl _value, $Res Function(_$DrawingEntityImpl) _then)
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
    return _then(_$DrawingEntityImpl(
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

class _$DrawingEntityImpl implements _DrawingEntity {
  const _$DrawingEntityImpl(
      {required this.id,
      required this.userId,
      required this.title,
      required this.base64Image,
      required this.thumbnailBase64,
      required this.createdAt,
      required this.updatedAt});

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
    return 'DrawingEntity(id: $id, userId: $userId, title: $title, base64Image: $base64Image, thumbnailBase64: $thumbnailBase64, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DrawingEntityImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, title, base64Image,
      thumbnailBase64, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DrawingEntityImplCopyWith<_$DrawingEntityImpl> get copyWith =>
      __$$DrawingEntityImplCopyWithImpl<_$DrawingEntityImpl>(this, _$identity);
}

abstract class _DrawingEntity implements DrawingEntity {
  const factory _DrawingEntity(
      {required final String id,
      required final String userId,
      required final String title,
      required final String base64Image,
      required final String thumbnailBase64,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$DrawingEntityImpl;

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
  _$$DrawingEntityImplCopyWith<_$DrawingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
