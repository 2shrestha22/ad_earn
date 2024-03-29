import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/user/i_user_repo.dart';
import '../../domain/user/user_data.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._userRepo) : super(const _LoadInProgress());

  final IUserRepo _userRepo;
  // StreamSubscription _authSubscription;
  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield* event.map(
      started: (_) async* {
        yield UserState.loadInProgress();

        yield* _userRepo
            .getUserData()
            .map((userData) => UserState.loadInSuccess(userData));
      },
    );
  }

  // @override
  // Future<void> close() async {
  //   await _authSubscription.cancel();
  //   return super.close();
  // }
}
