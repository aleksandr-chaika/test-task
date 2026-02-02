import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import '../../core/error/app_error.dart';
import '../entity/drawing_entity.dart';

abstract class DrawingRepository {
  Future<Either<AppError, List<DrawingEntity>>> getUserDrawings(String userId);

  Future<Either<AppError, DrawingEntity>> getDrawing(String id);

  Future<Either<AppError, DrawingEntity>> saveDrawing({
    required String userId,
    required String title,
    required Uint8List imageData,
    String? existingId,
  });

  Future<Either<AppError, void>> deleteDrawing(String id);

  Future<Either<AppError, String>> exportToGallery(Uint8List imageData);
}
