import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_response.freezed.dart';
part 'signup_response.g.dart';

@Freezed()
class SignupResponse with _$SignupResponse {
  const factory SignupResponse({
    String? status,
    String? status_code,
    String? msg,
    List<SignupResult>? result,
  }) = _SignupResponse;

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

@Freezed()
class SignupResult with _$SignupResult {
  const factory SignupResult({
    String? userName,
    String? userFirmName,
    String? mobile_no,
    String? userEmail,
    String? userGstNum,
    String? created_at,
    String? id,
  }) = _SignupResult;

  factory SignupResult.fromJson(Map<String, dynamic> json) =>
      _$SignupResultFromJson(json);
}
