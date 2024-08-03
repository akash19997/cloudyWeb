// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YarnResp _$$_YarnRespFromJson(Map<String, dynamic> json) => _$_YarnResp(
      status: json['status'] as String?,
      status_code: json['status_code'] as String?,
      msg: json['msg'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => YarnList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_YarnRespToJson(_$_YarnResp instance) =>
    <String, dynamic>{
      'status': instance.status,
      'status_code': instance.status_code,
      'msg': instance.msg,
      'result': instance.result,
    };

_$_YarnList _$$_YarnListFromJson(Map<String, dynamic> json) => _$_YarnList(
      yarnCatID: json['yarnCatID'] as String?,
      yarnCatName: json['yarnCatName'] as String?,
      dateAdded: json['dateAdded'] as String?,
    );

Map<String, dynamic> _$$_YarnListToJson(_$_YarnList instance) =>
    <String, dynamic>{
      'yarnCatID': instance.yarnCatID,
      'yarnCatName': instance.yarnCatName,
      'dateAdded': instance.dateAdded,
    };
