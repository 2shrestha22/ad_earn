import 'package:ad_earn/domain/ad/i_ad_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ad_earn/app_config.dart' as CONFIG;
import 'package:injectable/injectable.dart';

part 'ad_state.dart';
part 'ad_cubit.freezed.dart';

@injectable
class AdCubit extends Cubit<AdState> {
  final IAdRepo _adRepo;

  AdCubit(this._adRepo) : super(AdState.initial());

  Future<void> watchAdBtnPressed() async {
    emit(_AdLoadInProgress());

    try {
      await RewardedVideoAd.instance.load(adUnitId: CONFIG.rewardedAdUnitId);
    } catch (e) {}

    RewardedVideoAd.instance.listener = (RewardedVideoAdEvent event,
        {String rewardType, int rewardAmount}) async {
      if (event == RewardedVideoAdEvent.rewarded) {
        print(rewardAmount);
        _adRepo.updateCoin(5);
      }

      if (event == RewardedVideoAdEvent.loaded) {
        await RewardedVideoAd.instance.show();
        emit(_Initial());
      }
    };
  }
}
