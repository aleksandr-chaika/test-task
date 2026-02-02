import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

enum AuthErrorType {
  invalidEmail,
  userNotFound,
  wrongPassword,
  emailAlreadyInUse,
  weakPassword,
  unauthorized,
  unknown,
}

@freezed
class AppError with _$AppError {
  const factory AppError.server(String message) = ServerError;
  const factory AppError.network(String message) = NetworkError;
  const factory AppError.auth(AuthErrorType type, String message) = AuthError;
  const factory AppError.validation(String message) = ValidationError;
  const factory AppError.notFound(String message) = NotFoundError;
  const factory AppError.permission(String message) = PermissionError;
  const factory AppError.unknown(String message) = UnknownError;
}

extension AppErrorExtension on AppError {
  String get displayMessage {
    return when(
      server: (message) => message,
      network: (message) => message,
      auth: (type, message) => message,
      validation: (message) => message,
      notFound: (message) => message,
      permission: (message) => message,
      unknown: (message) => message,
    );
  }
}
