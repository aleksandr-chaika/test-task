abstract class NotificationService {
  Future<void> initialize();

  Future<bool> requestPermissions();

  Future<void> showSaveSuccessNotification({
    required String title,
    String? body,
  });

  Future<void> showExportSuccessNotification({
    required String title,
    String? body,
  });
}
