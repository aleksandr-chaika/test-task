import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_states.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    String? errorMessage,
  }) = _RegistrationState;

  factory RegistrationState.initial() => const RegistrationState();
}
