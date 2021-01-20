import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/user/i_user_repo.dart';
import '../../domain/user/user_data.dart';

@LazySingleton(as: IUserRepo)
class UserRepo implements IUserRepo {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;

  UserRepo(this._firebaseFirestore, this._firebaseAuth);

  @override
  Stream<UserData> getUserData() async* {
    yield* _firebaseFirestore
        .collection('users')
        .doc(_firebaseAuth.currentUser.uid)
        .snapshots()
        .map((snapshot) => UserData.fromJson(snapshot.data()));
  }

  @override
  Future<void> updateCoin(int coin) async {}

  @override
  Future<void> updateProfilePicture(String imageUrl) {
    // TODO: implement updateProfilePicture
    throw UnimplementedError();
  }
}
