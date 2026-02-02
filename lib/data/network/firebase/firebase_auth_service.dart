import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/app_error.dart';
import '../../../domain/entity/user_entity.dart';

@lazySingleton
class FirebaseAuthService {
  UserEntity? _currentUser;

  bool get isAvailable => true;

  Future<Either<AppError, UserEntity>> login({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));

    if (email.isEmpty || !email.contains('@')) {
      return const Left(AppError.validation('Введите корректный email'));
    }

    if (password.length < 6) {
      return const Left(AppError.validation('Пароль должен быть не менее 6 символов'));
    }

    _currentUser = UserEntity(
      id: 'local_user_${DateTime.now().millisecondsSinceEpoch}',
      email: email,
      name: email.split('@').first,
      createdAt: DateTime.now(),
    );

    return Right(_currentUser!);
  }

  Future<Either<AppError, UserEntity>> register({
    required String email,
    required String password,
    required String name,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));

    if (name.isEmpty) {
      return const Left(AppError.validation('Введите имя'));
    }

    if (email.isEmpty || !email.contains('@')) {
      return const Left(AppError.validation('Введите корректный email'));
    }

    if (password.length < 6) {
      return const Left(AppError.validation('Пароль должен быть не менее 6 символов'));
    }

    _currentUser = UserEntity(
      id: 'local_user_${DateTime.now().millisecondsSinceEpoch}',
      email: email,
      name: name,
      createdAt: DateTime.now(),
    );

    return Right(_currentUser!);
  }

  Future<Either<AppError, void>> logout() async {
    _currentUser = null;
    return const Right(null);
  }

  Future<Either<AppError, UserEntity?>> getCurrentUser() async {
    return Right(_currentUser);
  }

  Stream<UserEntity?> get authStateChanges {
    return Stream.value(_currentUser);
  }
}
