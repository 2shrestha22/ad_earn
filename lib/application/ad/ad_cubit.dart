import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
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
      RewardedAd.load(
        adUnitId: CONFIG.rewardedAdUnitId,
        request: AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            ad.show(
              onUserEarnedReward: (ad, reward) {
                _adRepo.updateCoin(reward.amount.toInt());
              },
            );
          },
          onAdFailedToLoad: (error) {
            emit(_AdLoadFailure());
          },
        ),
      );
    } catch (e) {
      emit(_Initial());
      throw Exception(e);
    }
  }
}
