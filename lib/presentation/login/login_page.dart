import 'package:ad_earn/application/auth/login/login_cubit.dart';
import 'package:ad_earn/injection.dart';
import 'package:ad_earn/presentation/login/login_form/login_form.dart';
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
