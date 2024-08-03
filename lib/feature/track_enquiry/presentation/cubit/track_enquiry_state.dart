// part of 'track_enquiry_cubit.dart';

// @freezed
// class TrackMyEnquiryState with _$TrackMyEnquiryState {
//   const factory TrackMyEnquiryState.initial() = _Initial;
//   const factory TrackMyEnquiryState.loading() = _DataLoading;
//   const factory TrackMyEnquiryState.loaded({
//     TrackEnquiryResponse? trackEnquiryResponse,
//   }) = _DataLoaded;
//   const factory TrackMyEnquiryState.failure() = _DataFailure;
// }
part of 'track_enquiry_cubit.dart';

@freezed
class TrackMyEnquiryState with _$TrackMyEnquiryState {
  const factory TrackMyEnquiryState.initial() = _Initial;
  const factory TrackMyEnquiryState.loading() = _DataLoading;
  const factory TrackMyEnquiryState.loaded({
    TrackEnquiryResponse? trackEnquiryResponse,
  }) = _DataLoaded;
  const factory TrackMyEnquiryState.failure() = _DataFailure;
}
