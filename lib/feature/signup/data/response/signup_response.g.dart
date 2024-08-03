// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupResponse _$$_SignupResponseFromJson(Map<String, dynamic> json) =>
    _$_SignupResponse(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => SignupResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SignupResponseToJson(_$_SignupResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };

_$_SignupResult _$$_SignupResultFromJson(Map<String, dynamic> json) =>
    _$_SignupResult(
      userName: json['userName'] as String?,
      userFirmName: json['userFirmName'] as String?,
      mobile_no: json['mobile_no'] as String?,
      userEmail: json['userEmail'] as String?,
      userGstNum: json['userGstNum'] as String?,
      created_at: json['created_at'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_SignupResultToJson(_$_SignupResult instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'userFirmName': instance.userFirmName,
      'mobile_no': instance.mobile_no,
      'userEmail': instance.userEmail,
      'userGstNum': instance.userGstNum,
      'created_at': instance.created_at,
      'id': instance.id,
    };
