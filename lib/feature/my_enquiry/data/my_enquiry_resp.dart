import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_enquiry_resp.freezed.dart';
part 'my_enquiry_resp.g.dart';

@Freezed()
class EnquiryResponse with _$EnquiryResponse {
  const factory EnquiryResponse({
    String? status,
    String? status_code,
    String? msg,
    dynamic result,
  }) = _EnquiryResponse;

  factory EnquiryResponse.fromJson(Map<String, dynamic> json) =>
      _$EnquiryResponseFromJson(json);
}
