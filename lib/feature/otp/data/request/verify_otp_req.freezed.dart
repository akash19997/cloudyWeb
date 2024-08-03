// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_otp_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyOtp _$VerifyOtpFromJson(Map<String, dynamic> json) {
  return _VerifyOtp.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtp {
  String? get id => throw _privateConstructorUsedError;
  String? get cookie_id => throw _privateConstructorUsedError;
  String? get mobile_no => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpCopyWith<VerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpCopyWith<$Res> {
  factory $VerifyOtpCopyWith(VerifyOtp value, $Res Function(VerifyOtp) then) =
      _$VerifyOtpCopyWithImpl<$Res, VerifyOtp>;
  @useResult
  $Res call({String? id, String? cookie_id, String? mobile_no, String? otp});
}

/// @nodoc
class _$VerifyOtpCopyWithImpl<$Res, $Val extends VerifyOtp>
    implements $VerifyOtpCopyWith<$Res> {
  _$VerifyOtpCopyWithImpl(this._value, this._then);

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
    Object? otp = freezed,
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
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyOtpCopyWith<$Res> implements $VerifyOtpCopyWith<$Res> {
  factory _$$_VerifyOtpCopyWith(
          _$_VerifyOtp value, $Res Function(_$_VerifyOtp) then) =
      __$$_VerifyOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? cookie_id, String? mobile_no, String? otp});
}

/// @nodoc
class __$$_VerifyOtpCopyWithImpl<$Res>
    extends _$VerifyOtpCopyWithImpl<$Res, _$_VerifyOtp>
    implements _$$_VerifyOtpCopyWith<$Res> {
  __$$_VerifyOtpCopyWithImpl(
      _$_VerifyOtp _value, $Res Function(_$_VerifyOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cookie_id = freezed,
    Object? mobile_no = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$_VerifyOtp(
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
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyOtp implements _VerifyOtp {
  const _$_VerifyOtp(
      {required this.id,
      required this.cookie_id,
      required this.mobile_no,
      required this.otp});

  factory _$_VerifyOtp.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyOtpFromJson(json);

  @override
  final String? id;
  @override
  final String? cookie_id;
  @override
  final String? mobile_no;
  @override
  final String? otp;

  @override
  String toString() {
    return 'VerifyOtp(id: $id, cookie_id: $cookie_id, mobile_no: $mobile_no, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtp &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cookie_id, cookie_id) ||
                other.cookie_id == cookie_id) &&
            (identical(other.mobile_no, mobile_no) ||
                other.mobile_no == mobile_no) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, cookie_id, mobile_no, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyOtpCopyWith<_$_VerifyOtp> get copyWith =>
      __$$_VerifyOtpCopyWithImpl<_$_VerifyOtp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyOtpToJson(
      this,
    );
  }
}

abstract class _VerifyOtp implements VerifyOtp {
  const factory _VerifyOtp(
      {required final String? id,
      required final String? cookie_id,
      required final String? mobile_no,
      required final String? otp}) = _$_VerifyOtp;

  factory _VerifyOtp.fromJson(Map<String, dynamic> json) =
      _$_VerifyOtp.fromJson;

  @override
  String? get id;
  @override
  String? get cookie_id;
  @override
  String? get mobile_no;
  @override
  String? get otp;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyOtpCopyWith<_$_VerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}
