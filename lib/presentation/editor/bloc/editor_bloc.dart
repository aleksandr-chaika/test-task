import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/app_error.dart';
import '../../../domain/repository/auth_repository.dart';
import '../../../domain/repository/drawing_repository.dart';
import '../../../domain/services/connectivity_service.dart';
import '../../../domain/services/notification_service.dart';
import '../view/drawing_canvas.dart';
import 'editor_events.dart';
import 'editor_states.dart';

@injectable
class EditorBloc extends Bloc<EditorEvent, EditorState> {
  final AuthRepository _authRepository;
  final DrawingRepository _drawingRepository;
  final ConnectivityService _connectivityService;
  final NotificationService _notificationService;

  EditorBloc(
    this._authRepository,
    this._drawingRepository,
    this._connectivityService,
    this._notificationService,
  ) : super(EditorState.initial()) {
    on<EditorStarted>(_onStarted);
    on<EditorBrushSelected>(_onBrushSelected);
    on<EditorEraserSelected>(_onEraserSelected);
    on<EditorColorChanged>(_onColorChanged);
    on<EditorBrushSizeChanged>(_onBrushSizeChanged);
    on<EditorStrokeAdded>(_onStrokeAdded);
    on<EditorUndoRequested>(_onUndoRequested);
    on<EditorClearRequested>(_onClearRequested);
    on<EditorImageImported>(_onImageImported);
    on<EditorSaveRequested>(_onSaveRequested);
    on<EditorExportRequested>(_onExportRequested);
  }

  Future<void> _onStarted(
    EditorStarted event,
    Emitter<EditorState> emit,
  ) async {
    if (event.drawingId == null) {
      return;
    }

    emit(state.copyWith(isLoading: true));

    final result = await _drawingRepository.getDrawing(event.drawingId!);

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: error.displayMessage,
        ));
      },
      (drawing) {
        try {
          final imageBytes = base64Decode(drawing.base64Image);
          emit(state.copyWith(
            isLoading: false,
            existingDrawingId: drawing.id,
            backgroundImage: imageBytes,
          ));
        } catch (e) {
          emit(state.copyWith(
            isLoading: false,
            errorMessage: 'Ошибка загрузки изображения',
          ));
        }
      },
    );
  }

  void _onBrushSelected(
    EditorBrushSelected event,
    Emitter<EditorState> emit,
  ) {
    emit(state.copyWith(currentTool: EditorTool.brush));
  }

  void _onEraserSelected(
    EditorEraserSelected event,
    Emitter<EditorState> emit,
  ) {
    emit(state.copyWith(currentTool: EditorTool.eraser));
  }

  void _onColorChanged(
    EditorColorChanged event,
    Emitter<EditorState> emit,
  ) {
    emit(state.copyWith(currentColor: event.color));
  }

  void _onBrushSizeChanged(
    EditorBrushSizeChanged event,
    Emitter<EditorState> emit,
  ) {
    emit(state.copyWith(brushSize: event.size));
  }

  void _onStrokeAdded(
    EditorStrokeAdded event,
    Emitter<EditorState> emit,
  ) {
    emit(state.copyWith(strokes: [...state.strokes, event.stroke]));
  }

  void _onUndoRequested(
    EditorUndoRequested event,
    Emitter<EditorState> emit,
  ) {
    if (state.strokes.isEmpty) return;
    emit(state.copyWith(strokes: state.strokes.sublist(0, state.strokes.length - 1)));
  }

  void _onClearRequested(
    EditorClearRequested event,
    Emitter<EditorState> emit,
  ) {
    emit(state.copyWith(strokes: [], backgroundImage: null));
  }

  void _onImageImported(
    EditorImageImported event,
    Emitter<EditorState> emit,
  ) {
    emit(state.copyWith(backgroundImage: event.imageData, strokes: []));
  }

  Future<void> _onSaveRequested(
    EditorSaveRequested event,
    Emitter<EditorState> emit,
  ) async {
    final hasConnection = await _connectivityService.hasConnection();
    if (!hasConnection) {
      emit(state.copyWith(errorMessage: 'Нет подключения к интернету'));
      return;
    }

    emit(state.copyWith(isSaving: true, errorMessage: null));

    final userResult = await _authRepository.getCurrentUser();

    if (userResult.isLeft()) {
      final error = userResult.fold((l) => l, (r) => null)!;
      emit(state.copyWith(
        isSaving: false,
        errorMessage: error.displayMessage,
      ));
      return;
    }

    final user = userResult.fold((l) => null, (r) => r);
    if (user == null) {
      emit(state.copyWith(
        isSaving: false,
        errorMessage: 'Пользователь не авторизован',
      ));
      return;
    }

    final imageData = event.renderedImage ?? state.backgroundImage ?? Uint8List(0);

    if (imageData.isEmpty && state.strokes.isEmpty) {
      emit(state.copyWith(
        isSaving: false,
        errorMessage: 'Нечего сохранять',
      ));
      return;
    }

    final result = await _drawingRepository.saveDrawing(
      userId: user.id,
      title: event.title,
      imageData: imageData,
      existingId: state.existingDrawingId,
    );

    if (result.isLeft()) {
      final error = result.fold((l) => l, (r) => null)!;
      emit(state.copyWith(
        isSaving: false,
        errorMessage: error.displayMessage,
      ));
      return;
    }

    final drawing = result.fold((l) => null, (r) => r)!;

    if (imageData.isNotEmpty) {
      await _drawingRepository.exportToGallery(imageData);
    }

    await _notificationService.showSaveSuccessNotification(
      title: 'Сохранено',
      body: '«${event.title}» успешно сохранён',
    );

    emit(state.copyWith(
      isSaving: false,
      isSaved: true,
      existingDrawingId: drawing.id,
    ));
  }

  Future<void> _onExportRequested(
    EditorExportRequested event,
    Emitter<EditorState> emit,
  ) async {
    final imageData = state.backgroundImage;
    if (imageData == null || imageData.isEmpty) {
      emit(state.copyWith(errorMessage: 'Нет изображения для экспорта'));
      return;
    }

    final result = await _drawingRepository.exportToGallery(imageData);

    if (result.isLeft()) {
      final error = result.fold((l) => l, (r) => null)!;
      emit(state.copyWith(errorMessage: error.displayMessage));
      return;
    }

    await _notificationService.showExportSuccessNotification(
      title: 'Экспортировано',
      body: 'Рисунок сохранён в галерею устройства',
    );

    emit(state.copyWith(errorMessage: null));
  }
}
