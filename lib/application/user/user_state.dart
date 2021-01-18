part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
}
