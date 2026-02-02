import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/app_error.dart';
import '../../../../core/utils/validators.dart';
import '../../../../domain/repository/auth_repository.dart';
import 'registration_events.dart';
import 'registration_states.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final AuthRepository _authRepository;

  RegistrationBloc(this._authRepository)
      : super(RegistrationState.initial()) {
    on<RegistrationNameChanged>(_onNameChanged);
    on<RegistrationEmailChanged>(_onEmailChanged);
    on<RegistrationPasswordChanged>(_onPasswordChanged);
    on<RegistrationConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<RegistrationSubmitted>(_onRegisterSubmitted);
  }

  void _onNameChanged(
    RegistrationNameChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(
      name: event.name,
      errorMessage: null,
    ));
  }

  void _onEmailChanged(
    RegistrationEmailChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(
      email: event.email,
      errorMessage: null,
    ));
  }

  void _onPasswordChanged(
    RegistrationPasswordChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(
      password: event.password,
      errorMessage: null,
    ));
  }

  void _onConfirmPasswordChanged(
    RegistrationConfirmPasswordChanged event,
    Emitter<RegistrationState> emit,
  ) {
    emit(state.copyWith(
      confirmPassword: event.confirmPassword,
      errorMessage: null,
    ));
  }

  Future<void> _onRegisterSubmitted(
    RegistrationSubmitted event,
    Emitter<RegistrationState> emit,
  ) async {
    final nameError = Validators.validateName(state.name);
    if (nameError != null) {
      emit(state.copyWith(errorMessage: nameError));
      return;
    }

    final emailError = Validators.validateEmail(state.email);
    if (emailError != null) {
      emit(state.copyWith(errorMessage: emailError));
      return;
    }

    final passwordError = Validators.validatePassword(state.password);
    if (passwordError != null) {
      emit(state.copyWith(errorMessage: passwordError));
      return;
    }

    final confirmError = Validators.validateConfirmPassword(
      state.confirmPassword,
      state.password,
    );
    if (confirmError != null) {
      emit(state.copyWith(errorMessage: confirmError));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: null));

    final result = await _authRepository.register(
      email: state.email,
      password: state.password,
      name: state.name,
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
