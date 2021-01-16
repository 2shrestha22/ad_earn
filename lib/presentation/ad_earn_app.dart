import 'package:ad_earn/application/auth/auth_bloc.dart';
import 'package:ad_earn/injection.dart';
import 'package:ad_earn/presentation/homepage/homepage.dart';
import 'package:ad_earn/presentation/login/login_page.dart';
import 'package:ad_earn/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdEarnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AuthBloc>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.map(
              initial: (s) => SplashScreen(),
              unauthenticated: (s) => LoginPage(),
              authenticated: (s) => Homepage(),
            );
          },
        ),
      ),
    );
  }
}
