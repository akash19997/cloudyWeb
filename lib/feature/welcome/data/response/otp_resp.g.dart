// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OtpResponse _$$_OtpResponseFromJson(Map<String, dynamic> json) =>
    _$_OtpResponse(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: json['result'],
    );

Map<String, dynamic> _$$_OtpResponseToJson(_$_OtpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };

_$_OtpResult _$$_OtpResultFromJson(Map<String, dynamic> json) => _$_OtpResult(
      otp: json['otp'] as String?,
      mobile_no: json['mobile_no'] as String?,
    );

Map<String, dynamic> _$$_OtpResultToJson(_$_OtpResult instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'mobile_no': instance.mobile_no,
    };
