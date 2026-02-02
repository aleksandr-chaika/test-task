import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_events.freezed.dart';

@freezed
class GalleryEvent with _$GalleryEvent {
  const factory GalleryEvent.started() = GalleryStarted;
  const factory GalleryEvent.refreshRequested() = GalleryRefreshRequested;
  const factory GalleryEvent.deleteRequested(String drawingId) =
      GalleryDeleteRequested;
  const factory GalleryEvent.logoutRequested() = GalleryLogoutRequested;
}
