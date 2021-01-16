part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.authenticationUserChanged({AppUser user}) =
      _AuthenticationUserChanged;
}
