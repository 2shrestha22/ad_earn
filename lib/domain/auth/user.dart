import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class AppUser implements _$AppUser {
  const AppUser._();

  const factory AppUser({
    @required String userId,
    @required String email,
    @required String name,
    @required String photoUrl,
  }) = _AppUser;

  factory AppUser.empty() => AppUser(
        userId: '',
        email: '',
        name: '',
        photoUrl: '',
      );
}
