import '../../domain/entity/drawing_entity.dart';
import '../network/models/drawing_api_model.dart';

extension DrawingApiMapper on DrawingApiModel {
  DrawingEntity toDomain() {
    return DrawingEntity(
      id: id,
      userId: userId,
      title: title,
      base64Image: base64Image,
      thumbnailBase64: thumbnailBase64,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension DrawingEntityMapper on DrawingEntity {
  DrawingApiModel toApiModel() {
    return DrawingApiModel(
      id: id,
      userId: userId,
      title: title,
      base64Image: base64Image,
      thumbnailBase64: thumbnailBase64,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
