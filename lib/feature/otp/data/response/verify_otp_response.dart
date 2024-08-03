

import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_otp_response.freezed.dart';
part 'verify_otp_response.g.dart';

@Freezed()
class VerifyOtpResponse with _$VerifyOtpResponse {
  const factory VerifyOtpResponse({
    String? status,
    String? status_code,
    String? msg,
    dynamic result,
  }) = _VerifyOtpResponse;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);
}

@Freezed()
class OtpResult with _$OtpResult {
  const factory OtpResult({
   
  String?			id,
String ?userName ,
String ?userEmail ,
String ?userFirmName, 
String ?userGstNum ,
String ?otp ,
String ?mobile_no, 
String ?profile_image, 
String ?is_active ,
String ?is_verify ,
String ?is_admin ,
String ?token ,
String ?password_reset_code ,
String ?last_ip ,
String ?created_at ,
String ?updated_at ,
  }) = _OtpResult;

  factory OtpResult.fromJson(Map<String, dynamic> json) =>
      _$OtpResultFromJson(json);
}
