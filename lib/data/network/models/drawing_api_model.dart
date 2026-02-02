import 'package:freezed_annotation/freezed_annotation.dart';

part 'drawing_api_model.freezed.dart';
part 'drawing_api_model.g.dart';

@freezed
class DrawingApiModel with _$DrawingApiModel {
  const factory DrawingApiModel({
    required String id,
    required String userId,
    required String title,
    required String base64Image,
    required String thumbnailBase64,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DrawingApiModel;

  factory DrawingApiModel.fromJson(Map<String, dynamic> json) =>
      _$DrawingApiModelFromJson(json);
}
