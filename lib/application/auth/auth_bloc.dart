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
  StreamSubscription<AuthUser>? _userSubscription;

  AuthBloc(this._authRepo) : super(const _Initial()) {
    _userSubscription = _authRepo.user.listen(
      (user) {
        add(AuthEvent.authenticationUserChanged(user: user));
      },
    );

    // on((_Started event, emit) {});
    on((_AuthenticationUserChanged event, emit) {
      emit(event.user != AuthUser.empty()
          ? AuthState.authenticated(event.user)
          : const AuthState.unauthenticated());
    });

    on((_LogoutRequested logoutRequested, emit) {
      _authRepo.logOut();
    });
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
