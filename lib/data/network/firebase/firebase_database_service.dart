import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/app_error.dart';
import '../models/drawing_api_model.dart';

@lazySingleton
class FirebaseDatabaseService {
  final Map<String, DrawingApiModel> _drawings = {};

  bool get isAvailable => true;

  Future<Either<AppError, List<DrawingApiModel>>> getUserDrawings(
    String userId,
  ) async {
    await Future.delayed(const Duration(milliseconds: 300));

    final userDrawings = _drawings.values
        .where((d) => d.userId == userId)
        .toList()
      ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return Right(userDrawings);
  }

  Future<Either<AppError, DrawingApiModel>> getDrawing(String id) async {
    await Future.delayed(const Duration(milliseconds: 200));

    final drawing = _drawings[id];
    if (drawing == null) {
      return const Left(AppError.notFound('Изображение не найдено'));
    }

    return Right(drawing);
  }

  Future<Either<AppError, DrawingApiModel>> saveDrawing(
    DrawingApiModel drawing,
  ) async {
    await Future.delayed(const Duration(milliseconds: 300));

    if (drawing.id.isEmpty) {
      final newId = 'drawing_${DateTime.now().millisecondsSinceEpoch}';
      final saved = drawing.copyWith(id: newId);
      _drawings[newId] = saved;
      return Right(saved);
    } else {
      _drawings[drawing.id] = drawing;
      return Right(drawing);
    }
  }

  Future<Either<AppError, void>> deleteDrawing(String id) async {
    await Future.delayed(const Duration(milliseconds: 200));
    _drawings.remove(id);
    return const Right(null);
  }
}
