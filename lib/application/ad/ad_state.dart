part of 'ad_cubit.dart';

@freezed
abstract class AdState with _$AdState {
  const factory AdState.initial() = _Initial;
  const factory AdState.adLoadFailure() = _AdLoadFailure;
  const factory AdState.adLoadInProgress() = _AdLoadInProgress;
}
