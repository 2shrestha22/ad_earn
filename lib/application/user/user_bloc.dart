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
  UserBloc(this._userRepo) : super(const _LoadInProgress()) {
    on((_Started started, emit) async* {
      emit(UserState.loadInProgress());

      _userRepo.getUserData().listen((userData) {
        add(_UserDataChanged(userData));
      });
    });

    on((_UserDataChanged userDataChanged, emit) async* {
      emit(UserState.loadInSuccess(userDataChanged.userData));
    });
  }

  final IUserRepo _userRepo;
}
