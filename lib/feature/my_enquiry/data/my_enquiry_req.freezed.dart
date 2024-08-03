// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_enquiry_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyEnquiryReq _$MyEnquiryReqFromJson(Map<String, dynamic> json) {
  return _MyEnquiryReq.fromJson(json);
}

/// @nodoc
mixin _$MyEnquiryReq {
  String? get enquiryUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyEnquiryReqCopyWith<MyEnquiryReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyEnquiryReqCopyWith<$Res> {
  factory $MyEnquiryReqCopyWith(
          MyEnquiryReq value, $Res Function(MyEnquiryReq) then) =
      _$MyEnquiryReqCopyWithImpl<$Res, MyEnquiryReq>;
  @useResult
  $Res call({String? enquiryUser});
}

/// @nodoc
class _$MyEnquiryReqCopyWithImpl<$Res, $Val extends MyEnquiryReq>
    implements $MyEnquiryReqCopyWith<$Res> {
  _$MyEnquiryReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enquiryUser = freezed,
  }) {
    return _then(_value.copyWith(
      enquiryUser: freezed == enquiryUser
          ? _value.enquiryUser
          : enquiryUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyEnquiryReqCopyWith<$Res>
    implements $MyEnquiryReqCopyWith<$Res> {
  factory _$$_MyEnquiryReqCopyWith(
          _$_MyEnquiryReq value, $Res Function(_$_MyEnquiryReq) then) =
      __$$_MyEnquiryReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? enquiryUser});
}

/// @nodoc
class __$$_MyEnquiryReqCopyWithImpl<$Res>
    extends _$MyEnquiryReqCopyWithImpl<$Res, _$_MyEnquiryReq>
    implements _$$_MyEnquiryReqCopyWith<$Res> {
  __$$_MyEnquiryReqCopyWithImpl(
      _$_MyEnquiryReq _value, $Res Function(_$_MyEnquiryReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enquiryUser = freezed,
  }) {
    return _then(_$_MyEnquiryReq(
      enquiryUser: freezed == enquiryUser
          ? _value.enquiryUser
          : enquiryUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyEnquiryReq implements _MyEnquiryReq {
  const _$_MyEnquiryReq({required this.enquiryUser});

  factory _$_MyEnquiryReq.fromJson(Map<String, dynamic> json) =>
      _$$_MyEnquiryReqFromJson(json);

  @override
  final String? enquiryUser;

  @override
  String toString() {
    return 'MyEnquiryReq(enquiryUser: $enquiryUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyEnquiryReq &&
            (identical(other.enquiryUser, enquiryUser) ||
                other.enquiryUser == enquiryUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enquiryUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyEnquiryReqCopyWith<_$_MyEnquiryReq> get copyWith =>
      __$$_MyEnquiryReqCopyWithImpl<_$_MyEnquiryReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyEnquiryReqToJson(
      this,
    );
  }
}

abstract class _MyEnquiryReq implements MyEnquiryReq {
  const factory _MyEnquiryReq({required final String? enquiryUser}) =
      _$_MyEnquiryReq;

  factory _MyEnquiryReq.fromJson(Map<String, dynamic> json) =
      _$_MyEnquiryReq.fromJson;

  @override
  String? get enquiryUser;
  @override
  @JsonKey(ignore: true)
  _$$_MyEnquiryReqCopyWith<_$_MyEnquiryReq> get copyWith =>
      throw _privateConstructorUsedError;
}
