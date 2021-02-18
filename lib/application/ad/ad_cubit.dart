import 'package:bloc/bloc.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../app_config.dart' as CONFIG;
import '../../domain/ad/i_ad_repo.dart';

part 'ad_cubit.freezed.dart';
part 'ad_state.dart';

@injectable
class AdCubit extends Cubit<AdState> {
  final IAdRepo _adRepo;

  AdCubit(this._adRepo) : super(AdState.initial());

  Future<void> watchAdBtnPressed() async {
    emit(_AdLoadInProgress());

    RewardedVideoAd.instance.listener = (RewardedVideoAdEvent event,
        {String rewardType, int rewardAmount}) async {
      if (event == RewardedVideoAdEvent.rewarded) {
        _adRepo.updateCoin(rewardAmount);
      }
      if (event == RewardedVideoAdEvent.loaded) {
        await RewardedVideoAd.instance.show();
        emit(_Initial());
      }
      if (event == RewardedVideoAdEvent.failedToLoad) {
        emit(_AdLoadFailure());
        // emit(_Initial());
      }
    };

    try {
      await RewardedVideoAd.instance.load(adUnitId: CONFIG.rewardedAdUnitId);
    } catch (e) {
      emit(_Initial());
      throw Exception(e);
    }
    //TODO remove banner ads
    //   BannerAd myBanner = BannerAd(
    //     // Replace the testAdUnitId with an ad unit id from the AdMob dash.
    //     // https://developers.google.com/admob/android/test-ads
    //     // https://developers.google.com/admob/ios/test-ads
    //     // adUnitId: 'ca-app-pub-4754550033559463/5697843769', //depe
    //     adUnitId: 'ca-app-pub-2415603924032760/3846362586', //me
    //     size: AdSize.banner,
    //     // targetingInfo: targetingInfo,
    //     listener: (MobileAdEvent event) {
    //       print("BannerAd event is $event");
    //     },
    //   );

    //   myBanner
    //     // typically this happens well before the ad is shown
    //     ..load()
    //     ..show(
    //       // Positions the banner ad 60 pixels from the bottom of the screen
    //       anchorOffset: 60.0,
    //       // Positions the banner ad 10 pixels from the center of the screen to the right
    //       horizontalCenterOffset: 10.0,
    //       // Banner Position
    //       anchorType: AnchorType.bottom,
    //     );
    //   myBanner..dispose();
  }
}
