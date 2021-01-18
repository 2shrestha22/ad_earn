import 'package:ad_earn/application/auth/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:formz/formz.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo.jpg',
                      width: 200,
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.security),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    BlocBuilder<LoginCubit, LoginState>(
                      builder: (context, state) {
                        return state.status.isSubmissionInProgress
                            ? const CircularProgressIndicator()
                            : SignInButton(
                                Buttons.Google,
                                onPressed: () {
                                  context.read<LoginCubit>().loginWithGoogle();
                                },
                              );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
