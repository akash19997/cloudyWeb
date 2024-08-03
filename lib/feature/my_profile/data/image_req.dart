//  "id":"27",
//     "":
import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_req.freezed.dart';
part 'image_req.g.dart';

@Freezed()
class MyProfileImageReq with _$MyProfileImageReq {
  const factory MyProfileImageReq({
    // required dynamic profile_image,
    required String? id,
    required String? profile_image,
  }) = _MyProfileImageReq;

  factory MyProfileImageReq.fromJson(Map<String, dynamic> json) =>
      _$MyProfileImageReqFromJson(json);
}
