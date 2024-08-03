part of 'yarn_cubit.dart';

@freezed
class YarnState with _$YarnState {
  const factory YarnState.initial() = _Initial;
  const factory YarnState.loading() = _DataLoading;
  const factory YarnState.loaded({
    dynamic gyarnResponse,
  }) = _DataLoaded;
  const factory YarnState.failure() = _DataFailure;
}
