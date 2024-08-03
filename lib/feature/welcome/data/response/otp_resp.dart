// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_resp.freezed.dart';
part 'otp_resp.g.dart';

@Freezed()
class OtpResponse with _$OtpResponse {
  const factory OtpResponse({
    String? status,
    String? status_code,
    String? msg,
    dynamic result,
  }) = _OtpResponse;

  factory OtpResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseFromJson(json);
}

@Freezed()
class OtpResult with _$OtpResult {
  const factory OtpResult({
    String? otp,
    String? mobile_no,
  }) = _OtpResult;

  factory OtpResult.fromJson(Map<String, dynamic> json) =>
      _$OtpResultFromJson(json);
}
