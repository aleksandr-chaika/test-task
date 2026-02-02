// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshRequested,
    required TResult Function(String drawingId) deleteRequested,
    required TResult Function() logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshRequested,
    TResult? Function(String drawingId)? deleteRequested,
    TResult? Function()? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshRequested,
    TResult Function(String drawingId)? deleteRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryStarted value) started,
    required TResult Function(GalleryRefreshRequested value) refreshRequested,
    required TResult Function(GalleryDeleteRequested value) deleteRequested,
    required TResult Function(GalleryLogoutRequested value) logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryStarted value)? started,
    TResult? Function(GalleryRefreshRequested value)? refreshRequested,
    TResult? Function(GalleryDeleteRequested value)? deleteRequested,
    TResult? Function(GalleryLogoutRequested value)? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryStarted value)? started,
    TResult Function(GalleryRefreshRequested value)? refreshRequested,
    TResult Function(GalleryDeleteRequested value)? deleteRequested,
    TResult Function(GalleryLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryEventCopyWith<$Res> {
  factory $GalleryEventCopyWith(
          GalleryEvent value, $Res Function(GalleryEvent) then) =
      _$GalleryEventCopyWithImpl<$Res, GalleryEvent>;
}

/// @nodoc
class _$GalleryEventCopyWithImpl<$Res, $Val extends GalleryEvent>
    implements $GalleryEventCopyWith<$Res> {
  _$GalleryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GalleryStartedImplCopyWith<$Res> {
  factory _$$GalleryStartedImplCopyWith(_$GalleryStartedImpl value,
          $Res Function(_$GalleryStartedImpl) then) =
      __$$GalleryStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryStartedImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GalleryStartedImpl>
    implements _$$GalleryStartedImplCopyWith<$Res> {
  __$$GalleryStartedImplCopyWithImpl(
      _$GalleryStartedImpl _value, $Res Function(_$GalleryStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryStartedImpl implements GalleryStarted {
  const _$GalleryStartedImpl();

  @override
  String toString() {
    return 'GalleryEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GalleryStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshRequested,
    required TResult Function(String drawingId) deleteRequested,
    required TResult Function() logoutRequested,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshRequested,
    TResult? Function(String drawingId)? deleteRequested,
    TResult? Function()? logoutRequested,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshRequested,
    TResult Function(String drawingId)? deleteRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryStarted value) started,
    required TResult Function(GalleryRefreshRequested value) refreshRequested,
    required TResult Function(GalleryDeleteRequested value) deleteRequested,
    required TResult Function(GalleryLogoutRequested value) logoutRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryStarted value)? started,
    TResult? Function(GalleryRefreshRequested value)? refreshRequested,
    TResult? Function(GalleryDeleteRequested value)? deleteRequested,
    TResult? Function(GalleryLogoutRequested value)? logoutRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryStarted value)? started,
    TResult Function(GalleryRefreshRequested value)? refreshRequested,
    TResult Function(GalleryDeleteRequested value)? deleteRequested,
    TResult Function(GalleryLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class GalleryStarted implements GalleryEvent {
  const factory GalleryStarted() = _$GalleryStartedImpl;
}

/// @nodoc
abstract class _$$GalleryRefreshRequestedImplCopyWith<$Res> {
  factory _$$GalleryRefreshRequestedImplCopyWith(
          _$GalleryRefreshRequestedImpl value,
          $Res Function(_$GalleryRefreshRequestedImpl) then) =
      __$$GalleryRefreshRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryRefreshRequestedImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GalleryRefreshRequestedImpl>
    implements _$$GalleryRefreshRequestedImplCopyWith<$Res> {
  __$$GalleryRefreshRequestedImplCopyWithImpl(
      _$GalleryRefreshRequestedImpl _value,
      $Res Function(_$GalleryRefreshRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryRefreshRequestedImpl implements GalleryRefreshRequested {
  const _$GalleryRefreshRequestedImpl();

  @override
  String toString() {
    return 'GalleryEvent.refreshRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryRefreshRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshRequested,
    required TResult Function(String drawingId) deleteRequested,
    required TResult Function() logoutRequested,
  }) {
    return refreshRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshRequested,
    TResult? Function(String drawingId)? deleteRequested,
    TResult? Function()? logoutRequested,
  }) {
    return refreshRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshRequested,
    TResult Function(String drawingId)? deleteRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryStarted value) started,
    required TResult Function(GalleryRefreshRequested value) refreshRequested,
    required TResult Function(GalleryDeleteRequested value) deleteRequested,
    required TResult Function(GalleryLogoutRequested value) logoutRequested,
  }) {
    return refreshRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryStarted value)? started,
    TResult? Function(GalleryRefreshRequested value)? refreshRequested,
    TResult? Function(GalleryDeleteRequested value)? deleteRequested,
    TResult? Function(GalleryLogoutRequested value)? logoutRequested,
  }) {
    return refreshRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryStarted value)? started,
    TResult Function(GalleryRefreshRequested value)? refreshRequested,
    TResult Function(GalleryDeleteRequested value)? deleteRequested,
    TResult Function(GalleryLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested(this);
    }
    return orElse();
  }
}

abstract class GalleryRefreshRequested implements GalleryEvent {
  const factory GalleryRefreshRequested() = _$GalleryRefreshRequestedImpl;
}

/// @nodoc
abstract class _$$GalleryDeleteRequestedImplCopyWith<$Res> {
  factory _$$GalleryDeleteRequestedImplCopyWith(
          _$GalleryDeleteRequestedImpl value,
          $Res Function(_$GalleryDeleteRequestedImpl) then) =
      __$$GalleryDeleteRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String drawingId});
}

/// @nodoc
class __$$GalleryDeleteRequestedImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GalleryDeleteRequestedImpl>
    implements _$$GalleryDeleteRequestedImplCopyWith<$Res> {
  __$$GalleryDeleteRequestedImplCopyWithImpl(
      _$GalleryDeleteRequestedImpl _value,
      $Res Function(_$GalleryDeleteRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drawingId = null,
  }) {
    return _then(_$GalleryDeleteRequestedImpl(
      null == drawingId
          ? _value.drawingId
          : drawingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GalleryDeleteRequestedImpl implements GalleryDeleteRequested {
  const _$GalleryDeleteRequestedImpl(this.drawingId);

  @override
  final String drawingId;

  @override
  String toString() {
    return 'GalleryEvent.deleteRequested(drawingId: $drawingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryDeleteRequestedImpl &&
            (identical(other.drawingId, drawingId) ||
                other.drawingId == drawingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, drawingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryDeleteRequestedImplCopyWith<_$GalleryDeleteRequestedImpl>
      get copyWith => __$$GalleryDeleteRequestedImplCopyWithImpl<
          _$GalleryDeleteRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshRequested,
    required TResult Function(String drawingId) deleteRequested,
    required TResult Function() logoutRequested,
  }) {
    return deleteRequested(drawingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshRequested,
    TResult? Function(String drawingId)? deleteRequested,
    TResult? Function()? logoutRequested,
  }) {
    return deleteRequested?.call(drawingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshRequested,
    TResult Function(String drawingId)? deleteRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (deleteRequested != null) {
      return deleteRequested(drawingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryStarted value) started,
    required TResult Function(GalleryRefreshRequested value) refreshRequested,
    required TResult Function(GalleryDeleteRequested value) deleteRequested,
    required TResult Function(GalleryLogoutRequested value) logoutRequested,
  }) {
    return deleteRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryStarted value)? started,
    TResult? Function(GalleryRefreshRequested value)? refreshRequested,
    TResult? Function(GalleryDeleteRequested value)? deleteRequested,
    TResult? Function(GalleryLogoutRequested value)? logoutRequested,
  }) {
    return deleteRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryStarted value)? started,
    TResult Function(GalleryRefreshRequested value)? refreshRequested,
    TResult Function(GalleryDeleteRequested value)? deleteRequested,
    TResult Function(GalleryLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (deleteRequested != null) {
      return deleteRequested(this);
    }
    return orElse();
  }
}

abstract class GalleryDeleteRequested implements GalleryEvent {
  const factory GalleryDeleteRequested(final String drawingId) =
      _$GalleryDeleteRequestedImpl;

  String get drawingId;
  @JsonKey(ignore: true)
  _$$GalleryDeleteRequestedImplCopyWith<_$GalleryDeleteRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GalleryLogoutRequestedImplCopyWith<$Res> {
  factory _$$GalleryLogoutRequestedImplCopyWith(
          _$GalleryLogoutRequestedImpl value,
          $Res Function(_$GalleryLogoutRequestedImpl) then) =
      __$$GalleryLogoutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GalleryLogoutRequestedImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$GalleryLogoutRequestedImpl>
    implements _$$GalleryLogoutRequestedImplCopyWith<$Res> {
  __$$GalleryLogoutRequestedImplCopyWithImpl(
      _$GalleryLogoutRequestedImpl _value,
      $Res Function(_$GalleryLogoutRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GalleryLogoutRequestedImpl implements GalleryLogoutRequested {
  const _$GalleryLogoutRequestedImpl();

  @override
  String toString() {
    return 'GalleryEvent.logoutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryLogoutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshRequested,
    required TResult Function(String drawingId) deleteRequested,
    required TResult Function() logoutRequested,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshRequested,
    TResult? Function(String drawingId)? deleteRequested,
    TResult? Function()? logoutRequested,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshRequested,
    TResult Function(String drawingId)? deleteRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GalleryStarted value) started,
    required TResult Function(GalleryRefreshRequested value) refreshRequested,
    required TResult Function(GalleryDeleteRequested value) deleteRequested,
    required TResult Function(GalleryLogoutRequested value) logoutRequested,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GalleryStarted value)? started,
    TResult? Function(GalleryRefreshRequested value)? refreshRequested,
    TResult? Function(GalleryDeleteRequested value)? deleteRequested,
    TResult? Function(GalleryLogoutRequested value)? logoutRequested,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GalleryStarted value)? started,
    TResult Function(GalleryRefreshRequested value)? refreshRequested,
    TResult Function(GalleryDeleteRequested value)? deleteRequested,
    TResult Function(GalleryLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class GalleryLogoutRequested implements GalleryEvent {
  const factory GalleryLogoutRequested() = _$GalleryLogoutRequestedImpl;
}
