import 'user_data.dart';

abstract class IUserRepo {
  Stream<UserData> getUserData();

  Future<void> updateCoin(int coin);

  Future<void> updateProfilePicture(String imageUrl);
}
