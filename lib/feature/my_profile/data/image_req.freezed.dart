// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyProfileImageReq _$MyProfileImageReqFromJson(Map<String, dynamic> json) {
  return _MyProfileImageReq.fromJson(json);
}

/// @nodoc
mixin _$MyProfileImageReq {
// required dynamic profile_image,
  String? get id => throw _privateConstructorUsedError;
  String? get profile_image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyProfileImageReqCopyWith<MyProfileImageReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfileImageReqCopyWith<$Res> {
  factory $MyProfileImageReqCopyWith(
          MyProfileImageReq value, $Res Function(MyProfileImageReq) then) =
      _$MyProfileImageReqCopyWithImpl<$Res, MyProfileImageReq>;
  @useResult
  $Res call({String? id, String? profile_image});
}

/// @nodoc
class _$MyProfileImageReqCopyWithImpl<$Res, $Val extends MyProfileImageReq>
    implements $MyProfileImageReqCopyWith<$Res> {
  _$MyProfileImageReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profile_image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyProfileImageReqCopyWith<$Res>
    implements $MyProfileImageReqCopyWith<$Res> {
  factory _$$_MyProfileImageReqCopyWith(_$_MyProfileImageReq value,
          $Res Function(_$_MyProfileImageReq) then) =
      __$$_MyProfileImageReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? profile_image});
}

/// @nodoc
class __$$_MyProfileImageReqCopyWithImpl<$Res>
    extends _$MyProfileImageReqCopyWithImpl<$Res, _$_MyProfileImageReq>
    implements _$$_MyProfileImageReqCopyWith<$Res> {
  __$$_MyProfileImageReqCopyWithImpl(
      _$_MyProfileImageReq _value, $Res Function(_$_MyProfileImageReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profile_image = freezed,
  }) {
    return _then(_$_MyProfileImageReq(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyProfileImageReq implements _MyProfileImageReq {
  const _$_MyProfileImageReq({required this.id, required this.profile_image});

  factory _$_MyProfileImageReq.fromJson(Map<String, dynamic> json) =>
      _$$_MyProfileImageReqFromJson(json);

// required dynamic profile_image,
  @override
  final String? id;
  @override
  final String? profile_image;

  @override
  String toString() {
    return 'MyProfileImageReq(id: $id, profile_image: $profile_image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyProfileImageReq &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, profile_image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyProfileImageReqCopyWith<_$_MyProfileImageReq> get copyWith =>
      __$$_MyProfileImageReqCopyWithImpl<_$_MyProfileImageReq>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyProfileImageReqToJson(
      this,
    );
  }
}

abstract class _MyProfileImageReq implements MyProfileImageReq {
  const factory _MyProfileImageReq(
      {required final String? id,
      required final String? profile_image}) = _$_MyProfileImageReq;

  factory _MyProfileImageReq.fromJson(Map<String, dynamic> json) =
      _$_MyProfileImageReq.fromJson;

  @override // required dynamic profile_image,
  String? get id;
  @override
  String? get profile_image;
  @override
  @JsonKey(ignore: true)
  _$$_MyProfileImageReqCopyWith<_$_MyProfileImageReq> get copyWith =>
      throw _privateConstructorUsedError;
}
