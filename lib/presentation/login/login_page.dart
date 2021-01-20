import '../../application/auth/login/login_cubit.dart';
import '../../injection.dart';
import 'login_form/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<LoginCubit>(),
      child: LoginForm(),
    );
  }
}
