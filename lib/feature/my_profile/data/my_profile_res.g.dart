// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_profile_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyProfileResp _$$_MyProfileRespFromJson(Map<String, dynamic> json) =>
    _$_MyProfileResp(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: json['result'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_MyProfileRespToJson(_$_MyProfileResp instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };
