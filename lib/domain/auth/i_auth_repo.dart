import 'package:ad_earn/domain/user/user.dart';

abstract class IAuthRepo {
  Future<void> loginWithGoogle();
  Future<void> loginWithFacebook();
  Future<void> logOut();
  Stream<AppUser> get user;
}
