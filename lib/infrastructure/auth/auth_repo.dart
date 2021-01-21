import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failures.dart';
import '../../domain/auth/auth_user.dart';
import '../../domain/auth/i_auth_repo.dart';
import '../../domain/user/user_data.dart';

@LazySingleton(as: IAuthRepo)
// @Injectable(as: IAuthRepo)
class AuthRepo implements IAuthRepo {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  final FirebaseFirestore _firebaseFirestore;

  AuthRepo(this._firebaseAuth, this._googleSignIn, this._firebaseFirestore,
      this._facebookAuth);

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
  Future<void> loginWithFacebook() async {
    try {
      //triger signinflow
      final accessToken = await _facebookAuth.login();
      //create credential from accesstoken
      final facebookAuthCredential =
          FacebookAuthProvider.credential(accessToken.token);

      final userCredential =
          await _firebaseAuth.signInWithCredential(facebookAuthCredential);

      //save user details in firebase of new users
      if (userCredential.additionalUserInfo.isNewUser) await createUser();
    } on FacebookAuthException catch (e) {
      throw const AuthFailure.signInFailure();
    }
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
      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);

      //save user details in firebase of new users
      if (userCredential.additionalUserInfo.isNewUser) await createUser();
    } on Exception {
      throw const AuthFailure.signInFailure();
    }
  }

  @override
  Stream<AuthUser> get user =>
      _firebaseAuth.authStateChanges().map((firebaseUser) =>
          firebaseUser == null ? AuthUser.empty() : firebaseUser.toDomain);

  @override
  Future<void> createUser() async {
    final user = _firebaseAuth.currentUser;
    await _firebaseFirestore.collection('users').doc(user.uid).set(
          UserData(
            uid: user.uid,
            email: user.email,
            displayName: user.displayName,
            photoUrl: user.photoURL,
            coin: 0,
          ).toJson(),
          SetOptions(merge: false),
        );
  }
}

extension on User {
  AuthUser get toDomain {
    return AuthUser(
      userId: uid,
      email: email,
      name: displayName,
      photoUrl: photoURL,
    );
  }
}
