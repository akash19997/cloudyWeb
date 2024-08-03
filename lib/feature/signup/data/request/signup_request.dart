import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_request.freezed.dart';
part 'signup_request.g.dart';

@Freezed()
class SignupRequest with _$SignupRequest {
  const factory SignupRequest({
    required String? id,
    required String? cookie_id,
    required String? userName,
    required String? userFirmName,
    required String? userEmail,
    required String? mobile_no,
    required String? userGstNum,
    required String? userCity,
  }) = _SignupRequest;

  factory SignupRequest.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestFromJson(json);
}
//  "id":"",
//     "cookie_id" : "22B74A13-B39B-453F-9521-69F68F7BB425",
//     "userName" : "Pratik",
//     "userFirmName" : "Raj",
//     "userEmail":"pratiks.4fox@gmail.com",
//     "mobile_no" : "7709897723",
//     "userGstNum" : "3323"