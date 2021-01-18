import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    @required int coin,
    @required String imageUrl,
  }) = _UserData;
}
