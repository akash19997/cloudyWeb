// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerifyOtpResponse _$$_VerifyOtpResponseFromJson(Map<String, dynamic> json) =>
    _$_VerifyOtpResponse(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: json['result'],
    );

Map<String, dynamic> _$$_VerifyOtpResponseToJson(
        _$_VerifyOtpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };

_$_OtpResult _$$_OtpResultFromJson(Map<String, dynamic> json) => _$_OtpResult(
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      userEmail: json['userEmail'] as String?,
      userFirmName: json['userFirmName'] as String?,
      userGstNum: json['userGstNum'] as String?,
      otp: json['otp'] as String?,
      mobile_no: json['mobile_no'] as String?,
      profile_image: json['profile_image'] as String?,
      is_active: json['is_active'] as String?,
      is_verify: json['is_verify'] as String?,
      is_admin: json['is_admin'] as String?,
      token: json['token'] as String?,
      password_reset_code: json['password_reset_code'] as String?,
      last_ip: json['last_ip'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_OtpResultToJson(_$_OtpResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'userFirmName': instance.userFirmName,
      'userGstNum': instance.userGstNum,
      'otp': instance.otp,
      'mobile_no': instance.mobile_no,
      'profile_image': instance.profile_image,
      'is_active': instance.is_active,
      'is_verify': instance.is_verify,
      'is_admin': instance.is_admin,
      'token': instance.token,
      'password_reset_code': instance.password_reset_code,
      'last_ip': instance.last_ip,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
