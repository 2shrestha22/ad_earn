import '../../../application/auth/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:formz/formz.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/logo.png',
              // width: double.infinity,
            ),
            // SizedBox(height: 20),
            // TextFormField(
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(Icons.email_outlined),
            //     border: OutlineInputBorder(),
            //     labelText: 'Email',
            //   ),
            // ),
            // SizedBox(height: 20),
            // TextFormField(
            //   decoration: InputDecoration(
            //     prefixIcon: Icon(Icons.security),
            //     border: OutlineInputBorder(),
            //     labelText: 'Password',
            //   ),
            //   obscureText: true,
            // ),
            // SizedBox(height: 20),
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                if (state.status.isSubmissionInProgress)
                  return CircularProgressIndicator();
                else
                  return Container(
                    child: Column(
                      children: [
                        SignInButton(
                          Buttons.Google,
                          onPressed: () {
                            context.read<LoginCubit>().loginWithGoogle();
                          },
                        ),
                        // SignInButton(
                        //   Buttons.FacebookNew,
                        //   onPressed: () {
                        //     context.read<LoginCubit>().loginWithFacebook();
                        //   },
                        // ),
                      ],
                    ),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}
