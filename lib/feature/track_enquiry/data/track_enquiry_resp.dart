import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_enquiry_resp.freezed.dart';
part 'track_enquiry_resp.g.dart';

@Freezed()
class TrackEnquiryResponse with _$TrackEnquiryResponse {
  const factory TrackEnquiryResponse({
    String? status,
    String? status_code,
    String? msg,
    dynamic result,
  }) = _TrackEnquiryResponse;

  factory TrackEnquiryResponse.fromJson(Map<String, dynamic> json) =>
      _$TrackEnquiryResponseFromJson(json);
}
