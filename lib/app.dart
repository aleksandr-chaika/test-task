import 'package:flutter/material.dart';

import 'core/router/app_router.dart';
import 'resources/localization/app_localization.dart';
import 'resources/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppLocalization.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}
