// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/ad/ad_cubit.dart' as _i15;
import 'application/auth/auth_bloc.dart' as _i16;
import 'application/auth/login/login_cubit.dart' as _i13;
import 'application/user/user_bloc.dart' as _i14;
import 'domain/ad/i_ad_repo.dart' as _i7;
import 'domain/auth/i_auth_repo.dart' as _i9;
import 'domain/user/i_user_repo.dart' as _i11;
import 'infrastructure/ad/ad_repo.dart' as _i8;
import 'infrastructure/auth/auth_repo.dart' as _i10;
import 'infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'infrastructure/user/user_repo.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FacebookAuth>(
      () => firebaseInjectableModule.facebookAuth);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i7.IAdRepo>(
      () => _i8.AdRepo(get<_i4.FirebaseAuth>(), get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IAuthRepo>(() => _i10.AuthRepo(
      get<_i4.FirebaseAuth>(),
      get<_i6.GoogleSignIn>(),
      get<_i5.FirebaseFirestore>(),
      get<_i3.FacebookAuth>()));
  gh.lazySingleton<_i11.IUserRepo>(() =>
      _i12.UserRepo(get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.factory<_i13.LoginCubit>(() => _i13.LoginCubit(get<_i9.IAuthRepo>()));
  gh.factory<_i14.UserBloc>(() => _i14.UserBloc(get<_i11.IUserRepo>()));
  gh.factory<_i15.AdCubit>(() => _i15.AdCubit(get<_i7.IAdRepo>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i9.IAuthRepo>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
