import 'package:dartz/dartz.dart';

import '../../core/error/app_error.dart';
import '../entity/user_entity.dart';

abstract class AuthRepository {
  Future<Either<AppError, UserEntity>> login({
    required String email,
    required String password,
  });

  Future<Either<AppError, UserEntity>> register({
    required String email,
    required String password,
    required String name,
  });

  Future<Either<AppError, void>> logout();

  Future<Either<AppError, UserEntity?>> getCurrentUser();

  Stream<UserEntity?> get authStateChanges;
}
