// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/ad/ad_cubit.dart';
import 'infrastructure/ad/ad_repo.dart';
import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/auth_repo.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/ad/i_ad_repo.dart';
import 'domain/auth/i_auth_repo.dart';
import 'domain/user/i_user_repo.dart';
import 'application/auth/login/login_cubit.dart';
import 'application/user/user_bloc.dart';
import 'infrastructure/user/user_repo.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FacebookAuth>(() => firebaseInjectableModule.facebookAuth);
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<IAdRepo>(
      () => AdRepo(get<FirebaseAuth>(), get<FirebaseFirestore>()));
  gh.lazySingleton<IAuthRepo>(() => AuthRepo(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FirebaseFirestore>(),
        get<FacebookAuth>(),
      ));
  gh.lazySingleton<IUserRepo>(
      () => UserRepo(get<FirebaseFirestore>(), get<FirebaseAuth>()));
  gh.factory<LoginCubit>(() => LoginCubit(get<IAuthRepo>()));
  gh.factory<UserBloc>(() => UserBloc(get<IUserRepo>()));
  gh.factory<AdCubit>(() => AdCubit(get<IAdRepo>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthRepo>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
