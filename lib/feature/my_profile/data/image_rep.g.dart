// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_rep.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageResp _$$_ImageRespFromJson(Map<String, dynamic> json) => _$_ImageResp(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: json['result'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_ImageRespToJson(_$_ImageResp instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };
