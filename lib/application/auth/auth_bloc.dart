import 'dart:async';

import '../../domain/auth/i_auth_repo.dart';
import '../../domain/auth/auth_user.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepo _authRepo;
  StreamSubscription<AuthUser> _userSubscription;

  AuthBloc(this._authRepo) : super(const _Initial()) {
    _userSubscription = _authRepo.user.listen(
      (user) {
        add(AuthEvent.authenticationUserChanged(user: user));
      },
    );
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
        started: (e) async* {},
        authenticationUserChanged: (event) async* {
          yield event.user != AuthUser.empty()
              ? AuthState.authenticated(event.user)
              : const AuthState.unauthenticated();
        },
        logoutRequested: (e) async* {
          await _authRepo.logOut();
        });
  }

  // AuthState _mapAuthenticationUserChangedToState(
  //   _AuthenticationUserChanged event,
  // ) {
  //   return event.user != AppUser.empty()
  //       ? AuthState.authenticated(event.user)
  //       : const AuthState.unauthenticated();
  // }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
