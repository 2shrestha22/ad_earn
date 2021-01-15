import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    @required String userId,
    @required String email,
    @required String name,
    @required String photoUrl,
  }) = _AppUser;
}
