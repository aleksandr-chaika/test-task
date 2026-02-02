import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_events.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String email) = LoginEmailChanged;
  const factory LoginEvent.passwordChanged(String password) = LoginPasswordChanged;
  const factory LoginEvent.loginSubmitted() = LoginSubmitted;
}
