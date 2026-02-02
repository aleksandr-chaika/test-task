import '../../domain/entity/user_entity.dart';
import '../network/models/user_api_model.dart';

extension UserApiMapper on UserApiModel {
  UserEntity toDomain() {
    return UserEntity(
      id: id,
      email: email,
      name: name,
      photoUrl: photoUrl,
      createdAt: createdAt,
    );
  }
}

extension UserEntityMapper on UserEntity {
  UserApiModel toApiModel() {
    return UserApiModel(
      id: id,
      email: email,
      name: name,
      photoUrl: photoUrl,
      createdAt: createdAt,
    );
  }
}
