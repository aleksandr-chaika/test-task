import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/app_error.dart';
import '../../domain/entity/user_entity.dart';
import '../../domain/repository/auth_repository.dart';
import '../network/firebase/firebase_auth_service.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthService _authService;

  AuthRepositoryImpl(this._authService);

  @override
  Future<Either<AppError, UserEntity>> login({
    required String email,
    required String password,
  }) {
    return _authService.login(email: email, password: password);
  }

  @override
  Future<Either<AppError, UserEntity>> register({
    required String email,
    required String password,
    required String name,
  }) {
    return _authService.register(
      email: email,
      password: password,
      name: name,
    );
  }

  @override
  Future<Either<AppError, void>> logout() {
    return _authService.logout();
  }

  @override
  Future<Either<AppError, UserEntity?>> getCurrentUser() {
    return _authService.getCurrentUser();
  }

  @override
  Stream<UserEntity?> get authStateChanges => _authService.authStateChanges;
}
