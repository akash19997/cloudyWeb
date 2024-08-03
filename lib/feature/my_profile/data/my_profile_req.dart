import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_profile_req.freezed.dart';
part 'my_profile_req.g.dart';

@Freezed()
class MyProfileReq with _$MyProfileReq {
  const factory MyProfileReq({
    // required dynamic profile_image,
    required String? id,
    required String? userName,
    required String? userFirmName,
    required String? mobile_no,
    required String? userEmail,
    required String? userGstNum,
    required String? userBillingAddress,
    required String? userAddress,
    required String? userDob,
  }) = _MyProfileReq;

  factory MyProfileReq.fromJson(Map<String, dynamic> json) =>
      _$MyProfileReqFromJson(json);
}
