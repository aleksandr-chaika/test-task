import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/drawing_entity.dart';

part 'gallery_states.freezed.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState.initial() = _Initial;
  const factory GalleryState.loading() = _Loading;
  const factory GalleryState.loaded(List<DrawingEntity> drawings) = _Loaded;
  const factory GalleryState.empty() = _Empty;
  const factory GalleryState.error(String message) = _Error;
  const factory GalleryState.loggedOut() = _LoggedOut;
}
