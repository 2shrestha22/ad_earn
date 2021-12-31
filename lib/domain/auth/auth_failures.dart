import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.logoutFailure() = _LogoutFailure;
  const factory AuthFailure.signInFailure() = _SignInFailure;
  const factory AuthFailure.signInCanceld() = _SignInCanceld;
}
