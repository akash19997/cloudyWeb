import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_req.freezed.dart';
part 'otp_req.g.dart';

@Freezed()
class OtpRequest with _$OtpRequest {
  const factory OtpRequest({
    required String? id,
    required String? cookie_id,
    required String? mobile_no,
  }) = _OtpRequest;

  factory OtpRequest.fromJson(Map<String, dynamic> json) =>
      _$OtpRequestFromJson(json);
}
