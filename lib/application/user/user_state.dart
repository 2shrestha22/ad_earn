part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loadInProgress() = _LoadInProgress;
  const factory UserState.loadInSuccess(UserData userData) = _LoadInSuccess;
}
