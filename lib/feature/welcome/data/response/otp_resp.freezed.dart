// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtpResponse _$OtpResponseFromJson(Map<String, dynamic> json) {
  return _OtpResponse.fromJson(json);
}

/// @nodoc
mixin _$OtpResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  dynamic get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpResponseCopyWith<OtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpResponseCopyWith<$Res> {
  factory $OtpResponseCopyWith(
          OtpResponse value, $Res Function(OtpResponse) then) =
      _$OtpResponseCopyWithImpl<$Res, OtpResponse>;
  @useResult
  $Res call({String? status, String? status_code, String? msg, dynamic result});
}

/// @nodoc
class _$OtpResponseCopyWithImpl<$Res, $Val extends OtpResponse>
    implements $OtpResponseCopyWith<$Res> {
  _$OtpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      status_code: freezed == status_code
          ? _value.status_code
          : status_code // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtpResponseCopyWith<$Res>
    implements $OtpResponseCopyWith<$Res> {
  factory _$$_OtpResponseCopyWith(
          _$_OtpResponse value, $Res Function(_$_OtpResponse) then) =
      __$$_OtpResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? status_code, String? msg, dynamic result});
}

/// @nodoc
class __$$_OtpResponseCopyWithImpl<$Res>
    extends _$OtpResponseCopyWithImpl<$Res, _$_OtpResponse>
    implements _$$_OtpResponseCopyWith<$Res> {
  __$$_OtpResponseCopyWithImpl(
      _$_OtpResponse _value, $Res Function(_$_OtpResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = null,
  }) {
    return _then(_$_OtpResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      status_code: freezed == status_code
          ? _value.status_code
          : status_code // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtpResponse implements _OtpResponse {
  const _$_OtpResponse({this.status, this.status_code, this.msg, this.result});

  factory _$_OtpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OtpResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? status_code;
  @override
  final String? msg;
  @override
  final dynamic result;

  @override
  String toString() {
    return 'OtpResponse(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.status_code, status_code) ||
                other.status_code == status_code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, status_code, msg,
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpResponseCopyWith<_$_OtpResponse> get copyWith =>
      __$$_OtpResponseCopyWithImpl<_$_OtpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtpResponseToJson(
      this,
    );
  }
}

abstract class _OtpResponse implements OtpResponse {
  const factory _OtpResponse(
      {final String? status,
      final String? status_code,
      final String? msg,
      final dynamic result}) = _$_OtpResponse;

  factory _OtpResponse.fromJson(Map<String, dynamic> json) =
      _$_OtpResponse.fromJson;

  @override
  String? get status;
  @override
  String? get status_code;
  @override
  String? get msg;
  @override
  dynamic get result;
  @override
  @JsonKey(ignore: true)
  _$$_OtpResponseCopyWith<_$_OtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

OtpResult _$OtpResultFromJson(Map<String, dynamic> json) {
  return _OtpResult.fromJson(json);
}

/// @nodoc
mixin _$OtpResult {
  String? get otp => throw _privateConstructorUsedError;
  String? get mobile_no => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpResultCopyWith<OtpResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpResultCopyWith<$Res> {
  factory $OtpResultCopyWith(OtpResult value, $Res Function(OtpResult) then) =
      _$OtpResultCopyWithImpl<$Res, OtpResult>;
  @useResult
  $Res call({String? otp, String? mobile_no});
}

/// @nodoc
class _$OtpResultCopyWithImpl<$Res, $Val extends OtpResult>
    implements $OtpResultCopyWith<$Res> {
  _$OtpResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
    Object? mobile_no = freezed,
  }) {
    return _then(_value.copyWith(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_no: freezed == mobile_no
          ? _value.mobile_no
          : mobile_no // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtpResultCopyWith<$Res> implements $OtpResultCopyWith<$Res> {
  factory _$$_OtpResultCopyWith(
          _$_OtpResult value, $Res Function(_$_OtpResult) then) =
      __$$_OtpResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? otp, String? mobile_no});
}

/// @nodoc
class __$$_OtpResultCopyWithImpl<$Res>
    extends _$OtpResultCopyWithImpl<$Res, _$_OtpResult>
    implements _$$_OtpResultCopyWith<$Res> {
  __$$_OtpResultCopyWithImpl(
      _$_OtpResult _value, $Res Function(_$_OtpResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
    Object? mobile_no = freezed,
  }) {
    return _then(_$_OtpResult(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
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
class _$_OtpResult implements _OtpResult {
  const _$_OtpResult({this.otp, this.mobile_no});

  factory _$_OtpResult.fromJson(Map<String, dynamic> json) =>
      _$$_OtpResultFromJson(json);

  @override
  final String? otp;
  @override
  final String? mobile_no;

  @override
  String toString() {
    return 'OtpResult(otp: $otp, mobile_no: $mobile_no)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpResult &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.mobile_no, mobile_no) ||
                other.mobile_no == mobile_no));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp, mobile_no);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpResultCopyWith<_$_OtpResult> get copyWith =>
      __$$_OtpResultCopyWithImpl<_$_OtpResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtpResultToJson(
      this,
    );
  }
}

abstract class _OtpResult implements OtpResult {
  const factory _OtpResult({final String? otp, final String? mobile_no}) =
      _$_OtpResult;

  factory _OtpResult.fromJson(Map<String, dynamic> json) =
      _$_OtpResult.fromJson;

  @override
  String? get otp;
  @override
  String? get mobile_no;
  @override
  @JsonKey(ignore: true)
  _$$_OtpResultCopyWith<_$_OtpResult> get copyWith =>
      throw _privateConstructorUsedError;
}
