import 'package:ad_earn/domain/user/user.dart';

abstract class IUserRepo {
  Future<void> createUser(AppUser user);

  Future<void> updateCoin(int coin);

  Future<void> updateProfilePicture(String imageUrl);
}
