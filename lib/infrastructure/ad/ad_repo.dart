import 'package:ad_earn/domain/ad/i_ad_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IAdRepo)
class AdRepo implements IAdRepo {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  AdRepo(this._firebaseAuth, this._firebaseFirestore);
  @override
  Future<void> updateCoin(int coin) async {
    try {
      await _firebaseFirestore
          .collection('users')
          .doc(_firebaseAuth.currentUser.uid)
          .update({'coin': FieldValue.increment(coin)});
    } catch (e) {
      throw Exception();
    }
  }
}
