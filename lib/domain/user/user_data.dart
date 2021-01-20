import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
abstract class UserData with _$UserData {
  // const UserData._();

  const factory UserData({
    @required String uid,
    @required String email,
    @required String displayName,
    @required String photoUrl,
    @required int coin,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  // factory UserData.empty() => UserData(coin: 0);
}
