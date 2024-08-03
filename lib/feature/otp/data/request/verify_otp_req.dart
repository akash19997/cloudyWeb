import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_req.freezed.dart';
part 'verify_otp_req.g.dart';

@Freezed()
class VerifyOtp with _$VerifyOtp {
  const factory VerifyOtp({
    required String? id,
    required String? cookie_id,
    required String? mobile_no,
    required String? otp,
  }) = _VerifyOtp;

  factory VerifyOtp.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpFromJson(json);
}
