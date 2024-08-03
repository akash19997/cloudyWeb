part of 'my_enquiry_cubit.dart';

@freezed
class MyEnquiryState with _$MyEnquiryState {
  const factory MyEnquiryState.initial() = _Initial;
  const factory MyEnquiryState.loading() = _DataLoading;
  const factory MyEnquiryState.loaded({
    EnquiryResponse? enquiryResponse,
  }) = _DataLoaded;
  const factory MyEnquiryState.failure() = _DataFailure;
}
