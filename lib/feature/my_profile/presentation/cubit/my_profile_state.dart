part of 'my_profile_cubit.dart';

@freezed
class MyProfileState with _$MyProfileState {
  const factory MyProfileState.initial() = _Initial;
  const factory MyProfileState.loading() = _DataLoading;
  const factory MyProfileState.loaded({
    MyProfileResp? myProfileResp,
    ImageResp? imageResp,
  }) = _DataLoaded;
  const factory MyProfileState.failure() = _DataFailure;
}
