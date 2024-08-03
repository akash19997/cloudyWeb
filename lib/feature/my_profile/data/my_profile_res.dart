import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_profile_res.freezed.dart';
part 'my_profile_res.g.dart';

@Freezed()
class MyProfileResp with _$MyProfileResp {
  const factory MyProfileResp({
    String? status,
    String? status_code,
    String? msg,
    List<dynamic>? result,
  }) = _MyProfileResp;

  factory MyProfileResp.fromJson(Map<String, dynamic> json) =>
      _$MyProfileRespFromJson(json);
}
