import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_events.freezed.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.started() = SplashStarted;
  const factory SplashEvent.checkAuthStatus() = SplashCheckAuthStatus;
}
