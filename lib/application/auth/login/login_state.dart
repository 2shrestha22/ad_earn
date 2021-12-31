part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required Email email,
    required Password password,
    required FormzStatus status,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        email: const Email.pure(),
        password: const Password.pure(),
        status: FormzStatus.pure,
      );
}
