import 'dart:async';

import 'package:ad_earn/domain/auth/i_auth_repo.dart';
import 'package:ad_earn/domain/auth/user.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepo _authRepo;
  StreamSubscription<AppUser> _userSubscription;

  AuthBloc(this._authRepo) : super(const _Initial()) {
    _userSubscription = _authRepo.user
        .listen((user) => add(AuthEvent.authenticationUserChanged(user: user)));
  }

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      authenticationUserChanged: (event) async* {
        //TODO it is not working
        yield _mapAuthenticationUserChangedToState(event);
        // yield event.user != AppUser.empty()
        //     ? AuthState.authenticated(event.user)
        //     : const AuthState.unauthenticated();
      },
    );
  }

  AuthState _mapAuthenticationUserChangedToState(
    _AuthenticationUserChanged event,
  ) {
    return event.user != AppUser.empty()
        ? AuthState.authenticated(event.user)
        : const AuthState.unauthenticated();
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();

    return super.close();
  }
}
