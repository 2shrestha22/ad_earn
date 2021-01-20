import 'package:ad_earn/application/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.map(
            initial: (_) {
              return CircularProgressIndicator();
            },
            loadInProgress: (_) {
              return CircularProgressIndicator();
            },
            loadInSuccess: (s) {
              return Text(s.userData.displayName);
            },
          );
        },
      ),
    );
  }
}
