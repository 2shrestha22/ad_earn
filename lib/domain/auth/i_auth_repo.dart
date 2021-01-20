import 'package:ad_earn/domain/auth/auth_user.dart';

abstract class IAuthRepo {
  Future<void> loginWithGoogle();
  Future<void> loginWithFacebook();
  Future<void> logOut();
  Stream<AuthUser> get user;
  Future<void> createUser();
}
