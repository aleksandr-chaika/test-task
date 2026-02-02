import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_events.freezed.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.nameChanged(String name) = RegistrationNameChanged;
  const factory RegistrationEvent.emailChanged(String email) = RegistrationEmailChanged;
  const factory RegistrationEvent.passwordChanged(String password) =
      RegistrationPasswordChanged;
  const factory RegistrationEvent.confirmPasswordChanged(
      String confirmPassword) = RegistrationConfirmPasswordChanged;
  const factory RegistrationEvent.registerSubmitted() = RegistrationSubmitted;
}
