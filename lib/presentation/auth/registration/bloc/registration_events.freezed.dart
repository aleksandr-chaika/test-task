// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationNameChanged value) nameChanged,
    required TResult Function(RegistrationEmailChanged value) emailChanged,
    required TResult Function(RegistrationPasswordChanged value)
        passwordChanged,
    required TResult Function(RegistrationConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegistrationSubmitted value) registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationNameChanged value)? nameChanged,
    TResult? Function(RegistrationEmailChanged value)? emailChanged,
    TResult? Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult? Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegistrationSubmitted value)? registerSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationNameChanged value)? nameChanged,
    TResult Function(RegistrationEmailChanged value)? emailChanged,
    TResult Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegistrationSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegistrationNameChangedImplCopyWith<$Res> {
  factory _$$RegistrationNameChangedImplCopyWith(
          _$RegistrationNameChangedImpl value,
          $Res Function(_$RegistrationNameChangedImpl) then) =
      __$$RegistrationNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$RegistrationNameChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$RegistrationNameChangedImpl>
    implements _$$RegistrationNameChangedImplCopyWith<$Res> {
  __$$RegistrationNameChangedImplCopyWithImpl(
      _$RegistrationNameChangedImpl _value,
      $Res Function(_$RegistrationNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$RegistrationNameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationNameChangedImpl implements RegistrationNameChanged {
  const _$RegistrationNameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'RegistrationEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationNameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationNameChangedImplCopyWith<_$RegistrationNameChangedImpl>
      get copyWith => __$$RegistrationNameChangedImplCopyWithImpl<
          _$RegistrationNameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() registerSubmitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? registerSubmitted,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationNameChanged value) nameChanged,
    required TResult Function(RegistrationEmailChanged value) emailChanged,
    required TResult Function(RegistrationPasswordChanged value)
        passwordChanged,
    required TResult Function(RegistrationConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegistrationSubmitted value) registerSubmitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationNameChanged value)? nameChanged,
    TResult? Function(RegistrationEmailChanged value)? emailChanged,
    TResult? Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult? Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegistrationSubmitted value)? registerSubmitted,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationNameChanged value)? nameChanged,
    TResult Function(RegistrationEmailChanged value)? emailChanged,
    TResult Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegistrationSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class RegistrationNameChanged implements RegistrationEvent {
  const factory RegistrationNameChanged(final String name) =
      _$RegistrationNameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$RegistrationNameChangedImplCopyWith<_$RegistrationNameChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationEmailChangedImplCopyWith<$Res> {
  factory _$$RegistrationEmailChangedImplCopyWith(
          _$RegistrationEmailChangedImpl value,
          $Res Function(_$RegistrationEmailChangedImpl) then) =
      __$$RegistrationEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RegistrationEmailChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res,
        _$RegistrationEmailChangedImpl>
    implements _$$RegistrationEmailChangedImplCopyWith<$Res> {
  __$$RegistrationEmailChangedImplCopyWithImpl(
      _$RegistrationEmailChangedImpl _value,
      $Res Function(_$RegistrationEmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RegistrationEmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationEmailChangedImpl implements RegistrationEmailChanged {
  const _$RegistrationEmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegistrationEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationEmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationEmailChangedImplCopyWith<_$RegistrationEmailChangedImpl>
      get copyWith => __$$RegistrationEmailChangedImplCopyWithImpl<
          _$RegistrationEmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() registerSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? registerSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationNameChanged value) nameChanged,
    required TResult Function(RegistrationEmailChanged value) emailChanged,
    required TResult Function(RegistrationPasswordChanged value)
        passwordChanged,
    required TResult Function(RegistrationConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegistrationSubmitted value) registerSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationNameChanged value)? nameChanged,
    TResult? Function(RegistrationEmailChanged value)? emailChanged,
    TResult? Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult? Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegistrationSubmitted value)? registerSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationNameChanged value)? nameChanged,
    TResult Function(RegistrationEmailChanged value)? emailChanged,
    TResult Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegistrationSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class RegistrationEmailChanged implements RegistrationEvent {
  const factory RegistrationEmailChanged(final String email) =
      _$RegistrationEmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$RegistrationEmailChangedImplCopyWith<_$RegistrationEmailChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationPasswordChangedImplCopyWith<$Res> {
  factory _$$RegistrationPasswordChangedImplCopyWith(
          _$RegistrationPasswordChangedImpl value,
          $Res Function(_$RegistrationPasswordChangedImpl) then) =
      __$$RegistrationPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$RegistrationPasswordChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res,
        _$RegistrationPasswordChangedImpl>
    implements _$$RegistrationPasswordChangedImplCopyWith<$Res> {
  __$$RegistrationPasswordChangedImplCopyWithImpl(
      _$RegistrationPasswordChangedImpl _value,
      $Res Function(_$RegistrationPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$RegistrationPasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationPasswordChangedImpl implements RegistrationPasswordChanged {
  const _$RegistrationPasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationPasswordChangedImplCopyWith<_$RegistrationPasswordChangedImpl>
      get copyWith => __$$RegistrationPasswordChangedImplCopyWithImpl<
          _$RegistrationPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() registerSubmitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? registerSubmitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationNameChanged value) nameChanged,
    required TResult Function(RegistrationEmailChanged value) emailChanged,
    required TResult Function(RegistrationPasswordChanged value)
        passwordChanged,
    required TResult Function(RegistrationConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegistrationSubmitted value) registerSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationNameChanged value)? nameChanged,
    TResult? Function(RegistrationEmailChanged value)? emailChanged,
    TResult? Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult? Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegistrationSubmitted value)? registerSubmitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationNameChanged value)? nameChanged,
    TResult Function(RegistrationEmailChanged value)? emailChanged,
    TResult Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegistrationSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class RegistrationPasswordChanged implements RegistrationEvent {
  const factory RegistrationPasswordChanged(final String password) =
      _$RegistrationPasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$RegistrationPasswordChangedImplCopyWith<_$RegistrationPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$RegistrationConfirmPasswordChangedImplCopyWith(
          _$RegistrationConfirmPasswordChangedImpl value,
          $Res Function(_$RegistrationConfirmPasswordChangedImpl) then) =
      __$$RegistrationConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$RegistrationConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res,
        _$RegistrationConfirmPasswordChangedImpl>
    implements _$$RegistrationConfirmPasswordChangedImplCopyWith<$Res> {
  __$$RegistrationConfirmPasswordChangedImplCopyWithImpl(
      _$RegistrationConfirmPasswordChangedImpl _value,
      $Res Function(_$RegistrationConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$RegistrationConfirmPasswordChangedImpl(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationConfirmPasswordChangedImpl
    implements RegistrationConfirmPasswordChanged {
  const _$RegistrationConfirmPasswordChangedImpl(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'RegistrationEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationConfirmPasswordChangedImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationConfirmPasswordChangedImplCopyWith<
          _$RegistrationConfirmPasswordChangedImpl>
      get copyWith => __$$RegistrationConfirmPasswordChangedImplCopyWithImpl<
          _$RegistrationConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() registerSubmitted,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? registerSubmitted,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationNameChanged value) nameChanged,
    required TResult Function(RegistrationEmailChanged value) emailChanged,
    required TResult Function(RegistrationPasswordChanged value)
        passwordChanged,
    required TResult Function(RegistrationConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegistrationSubmitted value) registerSubmitted,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationNameChanged value)? nameChanged,
    TResult? Function(RegistrationEmailChanged value)? emailChanged,
    TResult? Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult? Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegistrationSubmitted value)? registerSubmitted,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationNameChanged value)? nameChanged,
    TResult Function(RegistrationEmailChanged value)? emailChanged,
    TResult Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegistrationSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class RegistrationConfirmPasswordChanged implements RegistrationEvent {
  const factory RegistrationConfirmPasswordChanged(
      final String confirmPassword) = _$RegistrationConfirmPasswordChangedImpl;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$RegistrationConfirmPasswordChangedImplCopyWith<
          _$RegistrationConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationSubmittedImplCopyWith<$Res> {
  factory _$$RegistrationSubmittedImplCopyWith(
          _$RegistrationSubmittedImpl value,
          $Res Function(_$RegistrationSubmittedImpl) then) =
      __$$RegistrationSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationSubmittedImplCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$RegistrationSubmittedImpl>
    implements _$$RegistrationSubmittedImplCopyWith<$Res> {
  __$$RegistrationSubmittedImplCopyWithImpl(_$RegistrationSubmittedImpl _value,
      $Res Function(_$RegistrationSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegistrationSubmittedImpl implements RegistrationSubmitted {
  const _$RegistrationSubmittedImpl();

  @override
  String toString() {
    return 'RegistrationEvent.registerSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() registerSubmitted,
  }) {
    return registerSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? registerSubmitted,
  }) {
    return registerSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? registerSubmitted,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationNameChanged value) nameChanged,
    required TResult Function(RegistrationEmailChanged value) emailChanged,
    required TResult Function(RegistrationPasswordChanged value)
        passwordChanged,
    required TResult Function(RegistrationConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(RegistrationSubmitted value) registerSubmitted,
  }) {
    return registerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationNameChanged value)? nameChanged,
    TResult? Function(RegistrationEmailChanged value)? emailChanged,
    TResult? Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult? Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult? Function(RegistrationSubmitted value)? registerSubmitted,
  }) {
    return registerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationNameChanged value)? nameChanged,
    TResult Function(RegistrationEmailChanged value)? emailChanged,
    TResult Function(RegistrationPasswordChanged value)? passwordChanged,
    TResult Function(RegistrationConfirmPasswordChanged value)?
        confirmPasswordChanged,
    TResult Function(RegistrationSubmitted value)? registerSubmitted,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted(this);
    }
    return orElse();
  }
}

abstract class RegistrationSubmitted implements RegistrationEvent {
  const factory RegistrationSubmitted() = _$RegistrationSubmittedImpl;
}
