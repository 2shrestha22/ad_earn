import 'package:ad_earn/domain/user/user_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';

@freezed
abstract class AuthUser implements _$AuthUser {
  const AuthUser._();

  const factory AuthUser({
    @required String userId,
    @required String email,
    @required String name,
    @required String photoUrl,
  }) = _AppUser;

  factory AuthUser.empty() => AuthUser(
        userId: '',
        email: '',
        name: '',
        photoUrl: '',
      );
}