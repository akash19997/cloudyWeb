import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_rep.freezed.dart';
part 'image_rep.g.dart';

@Freezed()
class ImageResp with _$ImageResp {
  const factory ImageResp({
    String? status,
    String? status_code,
    String? msg,
    List<dynamic>? result,
  }) = _ImageResp;

  factory ImageResp.fromJson(Map<String, dynamic> json) =>
      _$ImageRespFromJson(json);
}
