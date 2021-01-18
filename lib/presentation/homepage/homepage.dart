import 'package:ad_earn/application/auth/auth_bloc.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ad_earn/app_config.dart' as CONFIG;

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AdEarn'),
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                context.read<AuthBloc>().add(AuthEvent.logoutRequested());
              })
        ],
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () async {
          print('button is clicked');

          await RewardedVideoAd.instance
              .load(adUnitId: CONFIG.rewardedAdUnitId);

          RewardedVideoAd.instance.listener = (RewardedVideoAdEvent event,
              {String rewardType, int rewardAmount}) async {
            if (event == RewardedVideoAdEvent.rewarded) {
              print(rewardAmount);
            }

            if (event == RewardedVideoAdEvent.loaded) {
              await RewardedVideoAd.instance.show();
              // setState(() {
              //   _videoLoaded = true;
              // });
            }
          };
        },
        child: Text('Watch Video to earch coin'),
      )),
    );
  }
}
