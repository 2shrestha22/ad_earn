// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/auth_repo.dart';
import 'infrastructure/auth/firebase_injectable_module.dart';
import 'domain/auth/i_auth_repo.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.factory<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthRepo>(
      () => AuthRepo(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthRepo>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
