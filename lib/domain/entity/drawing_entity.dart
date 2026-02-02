import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawing_entity.freezed.dart';

@freezed
class DrawingEntity with _$DrawingEntity {
  const factory DrawingEntity({
    required String id,
    required String userId,
    required String title,
    required String base64Image,
    required String thumbnailBase64,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DrawingEntity;
}
