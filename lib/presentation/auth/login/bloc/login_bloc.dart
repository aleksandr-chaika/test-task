import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/app_error.dart';
import '../../../../domain/repository/auth_repository.dart';
import 'login_events.dart';
import 'login_states.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(LoginState.initial()) {
    on<LoginEmailChanged>(_onEmailChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  void _onEmailChanged(
    LoginEmailChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(
      email: event.email,
      errorMessage: null,
    ));
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(
      password: event.password,
      errorMessage: null,
    ));
  }

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.email.isEmpty || state.password.isEmpty) {
      emit(state.copyWith(
        errorMessage: 'Заполните все поля',
      ));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await _authRepository.login(
      email: state.email,
      password: state.password,
    );

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: error.displayMessage,
        ));
      },
      (user) {
        emit(state.copyWith(
          isLoading: false,
          isSuccess: true,
        ));
      },
    );
  }
}
