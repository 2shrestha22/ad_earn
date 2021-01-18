import 'package:ad_earn/domain/auth/auth_failures.dart';
import 'package:ad_earn/domain/auth/i_auth_repo.dart';
import 'package:ad_earn/domain/user/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepo)
// @Injectable(as: IAuthRepo)
class AuthRepo implements IAuthRepo {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthRepo(this._firebaseAuth, this._googleSignIn);

  @override
  Future<void> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
    } catch (e) {}
  }

  @override
  Future<void> loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<void> loginWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
    } on Exception {
      throw const AuthFailure.signInFailure();
    }
  }

  @override
  Stream<AppUser> get user =>
      _firebaseAuth.authStateChanges().map((firebaseUser) =>
          firebaseUser == null ? AppUser.empty() : firebaseUser.toDomain);
}

extension on User {
  AppUser get toDomain {
    return AppUser(
      userId: uid,
      email: email,
      name: displayName,
      photoUrl: photoURL,
    );
  }
}
