import 'dart:convert';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/app_error.dart';
import '../../domain/entity/drawing_entity.dart';
import '../../domain/repository/drawing_repository.dart';
import '../mapper/drawing_mapper.dart';
import '../network/firebase/firebase_database_service.dart';
import '../network/models/drawing_api_model.dart';

@LazySingleton(as: DrawingRepository)
class DrawingRepositoryImpl implements DrawingRepository {
  final FirebaseDatabaseService _databaseService;

  DrawingRepositoryImpl(this._databaseService);

  @override
  Future<Either<AppError, List<DrawingEntity>>> getUserDrawings(
    String userId,
  ) async {
    final result = await _databaseService.getUserDrawings(userId);
    return result.map((drawings) => drawings.map((d) => d.toDomain()).toList());
  }

  @override
  Future<Either<AppError, DrawingEntity>> getDrawing(String id) async {
    final result = await _databaseService.getDrawing(id);
    return result.map((drawing) => drawing.toDomain());
  }

  @override
  Future<Either<AppError, DrawingEntity>> saveDrawing({
    required String userId,
    required String title,
    required Uint8List imageData,
    String? existingId,
  }) async {
    try {
      final base64Image = base64Encode(imageData);
      final thumbnailBase64 = await _createThumbnail(imageData);
      final now = DateTime.now();

      final apiModel = DrawingApiModel(
        id: existingId ?? '',
        userId: userId,
        title: title,
        base64Image: base64Image,
        thumbnailBase64: thumbnailBase64,
        createdAt: existingId != null ? now : now,
        updatedAt: now,
      );

      final result = await _databaseService.saveDrawing(apiModel);
      return result.map((saved) => saved.toDomain());
    } catch (e) {
      return Left(AppError.unknown(e.toString()));
    }
  }

  @override
  Future<Either<AppError, void>> deleteDrawing(String id) {
    return _databaseService.deleteDrawing(id);
  }

  @override
  Future<Either<AppError, String>> exportToGallery(Uint8List imageData) async {
    try {
      final result = await ImageGallerySaverPlus.saveImage(
        imageData,
        quality: 100,
        name: 'DrawCloud_${DateTime.now().millisecondsSinceEpoch}',
      );

      if (result['isSuccess'] == true) {
        return Right(result['filePath'] as String? ?? 'Saved');
      } else {
        return const Left(AppError.unknown('Ошибка сохранения в галерею'));
      }
    } catch (e) {
      return Left(AppError.unknown(e.toString()));
    }
  }

  Future<String> _createThumbnail(Uint8List imageData) async {
    return base64Encode(imageData);
  }
}
