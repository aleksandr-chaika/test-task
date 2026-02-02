import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/app_error.dart';
import '../../../domain/repository/auth_repository.dart';
import '../../../domain/repository/drawing_repository.dart';
import 'gallery_events.dart';
import 'gallery_states.dart';

@injectable
class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  final AuthRepository _authRepository;
  final DrawingRepository _drawingRepository;

  String? _currentUserId;

  GalleryBloc(
    this._authRepository,
    this._drawingRepository,
  ) : super(const GalleryState.initial()) {
    on<GalleryStarted>(_onStarted);
    on<GalleryRefreshRequested>(_onRefreshRequested);
    on<GalleryDeleteRequested>(_onDeleteRequested);
    on<GalleryLogoutRequested>(_onLogoutRequested);
  }

  Future<void> _onStarted(
    GalleryStarted event,
    Emitter<GalleryState> emit,
  ) async {
    emit(const GalleryState.loading());

    final userResult = await _authRepository.getCurrentUser();

    await userResult.fold(
      (error) async {
        emit(GalleryState.error(error.displayMessage));
      },
      (user) async {
        if (user == null) {
          emit(const GalleryState.loggedOut());
          return;
        }

        _currentUserId = user.id;
        await _loadDrawings(emit);
      },
    );
  }

  Future<void> _onRefreshRequested(
    GalleryRefreshRequested event,
    Emitter<GalleryState> emit,
  ) async {
    if (_currentUserId == null) {
      emit(const GalleryState.loggedOut());
      return;
    }

    emit(const GalleryState.loading());
    await _loadDrawings(emit);
  }

  Future<void> _onDeleteRequested(
    GalleryDeleteRequested event,
    Emitter<GalleryState> emit,
  ) async {
    final result = await _drawingRepository.deleteDrawing(event.drawingId);

    result.fold(
      (error) => emit(GalleryState.error(error.displayMessage)),
      (_) => add(const GalleryEvent.refreshRequested()),
    );
  }

  Future<void> _onLogoutRequested(
    GalleryLogoutRequested event,
    Emitter<GalleryState> emit,
  ) async {
    final result = await _authRepository.logout();

    result.fold(
      (error) => emit(GalleryState.error(error.displayMessage)),
      (_) => emit(const GalleryState.loggedOut()),
    );
  }

  Future<void> _loadDrawings(Emitter<GalleryState> emit) async {
    if (_currentUserId == null) return;

    final result = await _drawingRepository.getUserDrawings(_currentUserId!);

    result.fold(
      (error) => emit(GalleryState.error(error.displayMessage)),
      (drawings) {
        if (drawings.isEmpty) {
          emit(const GalleryState.empty());
        } else {
          emit(GalleryState.loaded(drawings));
        }
      },
    );
  }
}
