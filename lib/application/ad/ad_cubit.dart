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

    try {
      await RewardedVideoAd.instance.load(adUnitId: CONFIG.rewardedAdUnitId);
    } catch (e) {
      emit(_Initial());
      throw Exception(e);
    }

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
  }
}
