// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtpRequest _$OtpRequestFromJson(Map<String, dynamic> json) {
  return _OtpRequest.fromJson(json);
}

/// @nodoc
mixin _$OtpRequest {
  String? get id => throw _privateConstructorUsedError;
  String? get cookie_id => throw _privateConstructorUsedError;
  String? get mobile_no => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpRequestCopyWith<OtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpRequestCopyWith<$Res> {
  factory $OtpRequestCopyWith(
          OtpRequest value, $Res Function(OtpRequest) then) =
      _$OtpRequestCopyWithImpl<$Res, OtpRequest>;
  @useResult
  $Res call({String? id, String? cookie_id, String? mobile_no});
}

/// @nodoc
class _$OtpRequestCopyWithImpl<$Res, $Val extends OtpRequest>
    implements $OtpRequestCopyWith<$Res> {
  _$OtpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cookie_id = freezed,
    Object? mobile_no = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      cookie_id: freezed == cookie_id
          ? _value.cookie_id
          : cookie_id // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_no: freezed == mobile_no
          ? _value.mobile_no
          : mobile_no // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtpRequestCopyWith<$Res>
    implements $OtpRequestCopyWith<$Res> {
  factory _$$_OtpRequestCopyWith(
          _$_OtpRequest value, $Res Function(_$_OtpRequest) then) =
      __$$_OtpRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? cookie_id, String? mobile_no});
}

/// @nodoc
class __$$_OtpRequestCopyWithImpl<$Res>
    extends _$OtpRequestCopyWithImpl<$Res, _$_OtpRequest>
    implements _$$_OtpRequestCopyWith<$Res> {
  __$$_OtpRequestCopyWithImpl(
      _$_OtpRequest _value, $Res Function(_$_OtpRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cookie_id = freezed,
    Object? mobile_no = freezed,
  }) {
    return _then(_$_OtpRequest(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      cookie_id: freezed == cookie_id
          ? _value.cookie_id
          : cookie_id // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_no: freezed == mobile_no
          ? _value.mobile_no
          : mobile_no // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtpRequest implements _OtpRequest {
  const _$_OtpRequest(
      {required this.id, required this.cookie_id, required this.mobile_no});

  factory _$_OtpRequest.fromJson(Map<String, dynamic> json) =>
      _$$_OtpRequestFromJson(json);

  @override
  final String? id;
  @override
  final String? cookie_id;
  @override
  final String? mobile_no;

  @override
  String toString() {
    return 'OtpRequest(id: $id, cookie_id: $cookie_id, mobile_no: $mobile_no)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cookie_id, cookie_id) ||
                other.cookie_id == cookie_id) &&
            (identical(other.mobile_no, mobile_no) ||
                other.mobile_no == mobile_no));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, cookie_id, mobile_no);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpRequestCopyWith<_$_OtpRequest> get copyWith =>
      __$$_OtpRequestCopyWithImpl<_$_OtpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtpRequestToJson(
      this,
    );
  }
}

abstract class _OtpRequest implements OtpRequest {
  const factory _OtpRequest(
      {required final String? id,
      required final String? cookie_id,
      required final String? mobile_no}) = _$_OtpRequest;

  factory _OtpRequest.fromJson(Map<String, dynamic> json) =
      _$_OtpRequest.fromJson;

  @override
  String? get id;
  @override
  String? get cookie_id;
  @override
  String? get mobile_no;
  @override
  @JsonKey(ignore: true)
  _$$_OtpRequestCopyWith<_$_OtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
