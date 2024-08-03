import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_res.freezed.dart';
part 'filter_res.g.dart';

@Freezed()
class YarnResp with _$YarnResp {
  const factory YarnResp({
    String? status,
    String? status_code,
    String? msg,
    List<YarnList>? result,
  }) = _YarnResp;

  factory YarnResp.fromJson(Map<String, dynamic> json) =>
      _$YarnRespFromJson(json);
}

@Freezed()
class YarnList with _$YarnList {
  const factory YarnList({
    String? yarnCatID,
    String? yarnCatName,
    String? dateAdded,
  }) = _YarnList;

  factory YarnList.fromJson(Map<String, dynamic> json) =>
      _$YarnListFromJson(json);
}
