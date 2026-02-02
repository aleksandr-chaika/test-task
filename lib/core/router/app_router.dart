import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/auth/login/login_page.dart';
import '../../presentation/auth/registration/registration_page.dart';
import '../../presentation/editor/editor_page.dart';
import '../../presentation/gallery/gallery_page.dart';
import '../../presentation/splash/splash_page.dart';

abstract class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String registration = '/registration';
  static const String gallery = '/gallery';
  static const String editor = '/editor';
  static const String editorEdit = '/editor/:id';
}

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: 'splash',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const SplashPage(),
          transitionsBuilder: _fadeTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.login,
        name: 'login',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const LoginPage(),
          transitionsBuilder: _fadeSlideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.registration,
        name: 'registration',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const RegistrationPage(),
          transitionsBuilder: _slideUpTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.gallery,
        name: 'gallery',
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const GalleryPage(),
          transitionsBuilder: _fadeSlideTransition,
        ),
      ),
      GoRoute(
        path: AppRoutes.editor,
        name: 'editor',
        pageBuilder: (context, state) {
          final drawingId = state.extra as String?;
          return CustomTransitionPage(
            key: state.pageKey,
            child: EditorPage(drawingId: drawingId),
            transitionsBuilder: _slideUpTransition,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.editorEdit,
        name: 'editorEdit',
        pageBuilder: (context, state) {
          final drawingId = state.pathParameters['id'];
          return CustomTransitionPage(
            key: state.pageKey,
            child: EditorPage(drawingId: drawingId),
            transitionsBuilder: _slideUpTransition,
          );
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Страница не найдена: ${state.uri}'),
      ),
    ),
  );

  static Widget _fadeTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
      child: child,
    );
  }

  static Widget _fadeSlideTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final slideAnimation = Tween<Offset>(
      begin: const Offset(0.1, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic));

    final fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut));

    return FadeTransition(
      opacity: fadeAnimation,
      child: SlideTransition(
        position: slideAnimation,
        child: child,
      ),
    );
  }

  static Widget _slideUpTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic));

    final fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeIn));

    return FadeTransition(
      opacity: fadeAnimation,
      child: SlideTransition(
        position: slideAnimation,
        child: child,
      ),
    );
  }
}
