// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/network/firebase/firebase_auth_service.dart' as _i771;
import '../../data/network/firebase/firebase_database_service.dart' as _i512;
import '../../data/repository/auth_repository_impl.dart' as _i581;
import '../../data/repository/drawing_repository_impl.dart' as _i631;
import '../../data/services/connectivity_service_impl.dart' as _i794;
import '../../data/services/notification_service_impl.dart' as _i634;
import '../../domain/repository/auth_repository.dart' as _i614;
import '../../domain/repository/drawing_repository.dart' as _i994;
import '../../domain/services/connectivity_service.dart' as _i407;
import '../../domain/services/notification_service.dart' as _i374;
import '../../presentation/auth/login/bloc/login_bloc.dart' as _i215;
import '../../presentation/auth/registration/bloc/registration_bloc.dart'
    as _i767;
import '../../presentation/editor/bloc/editor_bloc.dart' as _i183;
import '../../presentation/gallery/bloc/gallery_bloc.dart' as _i596;
import '../../presentation/splash/bloc/splash_bloc.dart' as _i906;
import '../utils/connectivity_service.dart' as _i501;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i501.ConnectivityService>(
        () => _i501.ConnectivityService());
    gh.lazySingleton<_i771.FirebaseAuthService>(
        () => _i771.FirebaseAuthService());
    gh.lazySingleton<_i512.FirebaseDatabaseService>(
        () => _i512.FirebaseDatabaseService());
    gh.lazySingleton<_i374.NotificationService>(
        () => _i634.NotificationServiceImpl());
    gh.lazySingleton<_i407.ConnectivityService>(
        () => _i794.ConnectivityServiceImpl());
    gh.lazySingleton<_i994.DrawingRepository>(
        () => _i631.DrawingRepositoryImpl(gh<_i512.FirebaseDatabaseService>()));
    gh.lazySingleton<_i614.AuthRepository>(
        () => _i581.AuthRepositoryImpl(gh<_i771.FirebaseAuthService>()));
    gh.factory<_i906.SplashBloc>(
        () => _i906.SplashBloc(gh<_i614.AuthRepository>()));
    gh.factory<_i767.RegistrationBloc>(
        () => _i767.RegistrationBloc(gh<_i614.AuthRepository>()));
    gh.factory<_i215.LoginBloc>(
        () => _i215.LoginBloc(gh<_i614.AuthRepository>()));
    gh.factory<_i596.GalleryBloc>(() => _i596.GalleryBloc(
          gh<_i614.AuthRepository>(),
          gh<_i994.DrawingRepository>(),
        ));
    gh.factory<_i183.EditorBloc>(() => _i183.EditorBloc(
          gh<_i614.AuthRepository>(),
          gh<_i994.DrawingRepository>(),
          gh<_i407.ConnectivityService>(),
          gh<_i374.NotificationService>(),
        ));
    return this;
  }
}
