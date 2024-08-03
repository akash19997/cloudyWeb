part of 'home_screen_cubit.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.initial() = _Initial;
  const factory HomeScreenState.loading() = _DataLoading;
  const factory HomeScreenState.loaded({
    ProductListing? productListing,
  }) = _DataLoaded;
  const factory HomeScreenState.failure() = _DataFailure;
}
