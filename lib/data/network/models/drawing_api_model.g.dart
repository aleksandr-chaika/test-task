// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawing_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DrawingApiModelImpl _$$DrawingApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DrawingApiModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      title: json['title'] as String,
      base64Image: json['base64Image'] as String,
      thumbnailBase64: json['thumbnailBase64'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DrawingApiModelImplToJson(
        _$DrawingApiModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'base64Image': instance.base64Image,
      'thumbnailBase64': instance.thumbnailBase64,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
