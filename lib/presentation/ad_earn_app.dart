import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/ad/ad_cubit.dart';
import '../application/auth/auth_bloc.dart';
import '../injection.dart';
import 'dashboard/dashboard.dart';
import 'login/login_page.dart';
import 'splash_screen/splash_screen.dart';

class AdEarnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<AdCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return state.map(
              initial: (s) => SplashScreen(),
              unauthenticated: (s) => LoginPage(),
              authenticated: (s) => DashBoardPage(),
            );
          },
        ),
      ),
    );
  }
}
