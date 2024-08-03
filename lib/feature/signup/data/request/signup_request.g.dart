// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupRequest _$$_SignupRequestFromJson(Map<String, dynamic> json) =>
    _$_SignupRequest(
      id: json['id'] as String?,
      cookie_id: json['cookie_id'] as String?,
      userName: json['userName'] as String?,
      userFirmName: json['userFirmName'] as String?,
      userEmail: json['userEmail'] as String?,
      mobile_no: json['mobile_no'] as String?,
      userGstNum: json['userGstNum'] as String?,
      userCity: json['userCity'] as String?,
    );

Map<String, dynamic> _$$_SignupRequestToJson(_$_SignupRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cookie_id': instance.cookie_id,
      'userName': instance.userName,
      'userFirmName': instance.userFirmName,
      'userEmail': instance.userEmail,
      'mobile_no': instance.mobile_no,
      'userGstNum': instance.userGstNum,
      'userCity': instance.userCity,
    };
