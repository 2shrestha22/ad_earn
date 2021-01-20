import 'package:ad_earn/application/ad/ad_cubit.dart';
import 'package:ad_earn/application/auth/auth_bloc.dart';
import 'package:ad_earn/application/user/user_bloc.dart';
import 'package:ad_earn/presentation/dashboard/widgets/actions.dart';
import 'package:ad_earn/presentation/dashboard/widgets/user_details.dart';
import 'package:ad_earn/presentation/dashboard/widgets/watch_ad_button.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class DashBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt.get<UserBloc>()..add(const UserEvent.started()),
        ),
        BlocProvider(
          create: (context) => getIt.get<AdCubit>(),
        ),
      ],
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                onPressed: () {
                  context.read<AuthBloc>().add(AuthEvent.logoutRequested());
                }),
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 0.0,
              ),
              Image.asset(
                'assets/images/logo.jpg',
                fit: BoxFit.contain,
                height: 200.0,
              ),
              UserDetailsView(),
              Container(
                height: 350.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(252, 233, 187, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        stops: [0.2, 0.4, 0.6, 0.8],
                        colors: [
                          Color.fromRGBO(255, 212, 61, 1),
                          Color.fromRGBO(255, 212, 55, 1),
                          Color.fromRGBO(255, 211, 48, 1),
                          Color.fromRGBO(255, 211, 43, 1),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8),
                          // height: 80,
                          child: Column(
                            children: <Widget>[
                              Text(
                                '* each video gives 5 coins \n ** 100 coins = \$1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, fontStyle: FontStyle.italic),
                              ),
                              BlocConsumer<AdCubit, AdState>(
                                listener: (context, state) {
                                  state.maybeMap(
                                    orElse: () {},
                                    adLoadFailure: (_) =>
                                        FlushbarHelper.createError(
                                            message:
                                                'You have viewed to many ads, see FAQ')
                                          ..show(context),
                                  );
                                },
                                builder: (context, state) {
                                  return state.map(
                                    initial: (_) => WatchAdButton(
                                      onTap: () async => await context
                                          .read<AdCubit>()
                                          .watchAdBtnPressed(),
                                      text: 'WATCH VIDEO FOR COINS',
                                    ),
                                    adLoadInProgress: (_) => WatchAdButton(
                                      onTap: null,
                                      text: 'LOADING AD',
                                    ),
                                    adLoadFailure: (_) => WatchAdButton(
                                      onTap: () async => await context
                                          .read<AdCubit>()
                                          .watchAdBtnPressed(),
                                      text: 'RETRY',
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Divider(
                          height: 0.5,
                          color: Colors.grey,
                        ),
                        Table(
                          border: TableBorder.symmetric(
                            inside: BorderSide(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 0.5),
                          ),
                          children: [
                            TableRow(children: [
                              DashboardActions(
                                  iconPath: 'assets/images/ic_faq.png',
                                  desc: 'Frequently Asked Questions'),
                              DashboardActions(
                                  iconPath: 'assets/images/ic_money.png',
                                  desc: 'Redeem'),
                            ]),
                            TableRow(children: [
                              DashboardActions(
                                  iconPath: 'assets/images/ic_transact.png',
                                  desc: 'Transactions'),
                              DashboardActions(
                                  iconPath: 'assets/images/ic_reward.png',
                                  desc: 'Reward Points'),
                            ])
                          ],
                        ),
                        // Divider(
                        //   height: 0.5,
                        //   color: Colors.grey,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// custom action widget
}
