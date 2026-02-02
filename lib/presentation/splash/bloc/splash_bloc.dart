import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/repository/auth_repository.dart';
import 'splash_events.dart';
import 'splash_states.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AuthRepository _authRepository;

  SplashBloc(this._authRepository) : super(const SplashState.initial()) {
    on<SplashStarted>(_onStarted);
    on<SplashCheckAuthStatus>(_onCheckAuthStatus);
  }

  Future<void> _onStarted(
    SplashStarted event,
    Emitter<SplashState> emit,
  ) async {
    emit(const SplashState.loading());

    await Future.delayed(const Duration(milliseconds: 1500));

    add(const SplashEvent.checkAuthStatus());
  }

  Future<void> _onCheckAuthStatus(
    SplashCheckAuthStatus event,
    Emitter<SplashState> emit,
  ) async {
    try {
      final result = await _authRepository.getCurrentUser();

      result.fold(
        (error) => emit(const SplashState.unauthenticated()),
        (user) {
          if (user != null) {
            emit(const SplashState.authenticated());
          } else {
            emit(const SplashState.unauthenticated());
          }
        },
      );
    } catch (e) {
      debugPrint('Auth check failed: $e');
      emit(const SplashState.unauthenticated());
    }
  }
}
