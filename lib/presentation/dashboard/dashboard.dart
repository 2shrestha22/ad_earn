import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../app_config.dart';
import '../../application/ad/ad_cubit.dart';
import '../../application/auth/auth_bloc.dart';
import '../../application/user/user_bloc.dart';
import '../../injection.dart';
import '../about/about_page.dart';
import '../redeem/redeem_page.dart';
import '../reward_points/reward_points_page.dart';
import '../transactions/transactions_page.dart';
import 'widgets/actions.dart';
import 'widgets/user_details.dart';
import 'widgets/watch_ad_button.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  BannerAd? myBanner;

  @override
  void dispose() {
    myBanner?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // initAd();
  }

  void initAd() {
    myBanner = BannerAd(
      // Replace the testAdUnitId with an ad unit id from the AdMob dash.
      // https://developers.google.com/admob/android/test-ads
      // https://developers.google.com/admob/ios/test-ads

      adUnitId: rewardedAdUnitId,
      size: AdSize.banner,
      // targetingInfo: targetingInfo,

      listener: BannerAdListener(),

      // listener: (MobileAdEvent event) {
      //   print("BannerAd event is $event");

      //   if (event == MobileAdEvent.loaded) {
      //     myBanner?.show(
      //       // Positions the banner ad 60 pixels from the bottom of the screen
      //       anchorOffset: 60.0,
      //       // Positions the banner ad 10 pixels from the center of the screen to the right
      //       horizontalCenterOffset: 10.0,
      //       // Banner Position
      //       anchorType: AnchorType.bottom,
      //     );
      //   }
      // },
      request: AdRequest(),
    );

    myBanner
      // typically this happens well before the ad is shown
      ?..load();
  }

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
                height: 200.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              UserDetailsView(),
              SizedBox(
                height: 30.0,
              ),
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
                                '* watching each video gives you 5 coins',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, fontStyle: FontStyle.italic),
                              ),
                              BlocConsumer<AdCubit, AdState>(
                                listener: (context, state) {
                                  state.maybeWhen(
                                    orElse: () {},
                                    adLoadFailure: () {
                                      FlushbarHelper.createError(
                                          message:
                                              'You have viewed to many ads, try again later.')
                                        ..show(context);
                                    },
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
                              // why builder? because our blocprovider is below Build method that
                              //provides us context, so we don't have context that have userBloc,
                              //thats why we need builder widget to get buildContext with UserBloc
                              Builder(
                                builder: (ctx) => InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => BlocProvider.value(
                                          value: BlocProvider.of<UserBloc>(ctx),
                                          child: RedeemPage(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: DashboardActions(
                                      iconPath: 'assets/images/ic_money.png',
                                      desc: 'Redeem'),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => TransactionsPage(),
                                    ),
                                  );
                                },
                                child: DashboardActions(
                                    iconPath: 'assets/images/ic_transact.png',
                                    desc: 'Transactions'),
                              ),
                            ]),
                            TableRow(children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => RewardPointsPage(),
                                    ),
                                  );
                                },
                                child: DashboardActions(
                                    iconPath: 'assets/images/ic_reward.png',
                                    desc: 'Reward Points'),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => AboutPage(),
                                    ),
                                  );
                                },
                                child: DashboardActions(
                                    iconPath: 'assets/images/ic_about.png',
                                    desc: 'About'),
                              ),
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
}
