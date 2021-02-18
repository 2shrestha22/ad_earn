import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import '../../../app_config.dart' as CONFIG;

class WatchAdButton extends StatelessWidget {
  final void Function() onTap;
  final String text;

  const WatchAdButton({
    Key key,
    @required this.onTap,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.white, width: 2),
        ),
        onPressed: onTap,
        // onPressed: () async {
        //   RewardedVideoAd.instance.listener = (RewardedVideoAdEvent event,
        //       {String rewardType, int rewardAmount}) async {
        //     if (event == RewardedVideoAdEvent.rewarded) {
        //       // _adRepo.updateCoin(rewardAmount);
        //     }
        //     if (event == RewardedVideoAdEvent.loaded) {
        //       await RewardedVideoAd.instance.show();
        //       // emit(_Initial());
        //     }
        //     if (event == RewardedVideoAdEvent.failedToLoad) {
        //       // emit(_AdLoadFailure());
        //       // emit(_Initial());
        //     }
        //   };

        //   try {
        //     await RewardedVideoAd.instance
        //         .load(adUnitId: CONFIG.rewardedAdUnitId);
        //   } catch (e) {
        //     // emit(_Initial());
        //     throw Exception(e);
        //   }
        // },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
