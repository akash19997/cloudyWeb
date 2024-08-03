// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) {
  return _VerifyOtpResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  dynamic get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpResponseCopyWith<VerifyOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpResponseCopyWith<$Res> {
  factory $VerifyOtpResponseCopyWith(
          VerifyOtpResponse value, $Res Function(VerifyOtpResponse) then) =
      _$VerifyOtpResponseCopyWithImpl<$Res, VerifyOtpResponse>;
  @useResult
  $Res call({String? status, String? status_code, String? msg, dynamic result});
}

/// @nodoc
class _$VerifyOtpResponseCopyWithImpl<$Res, $Val extends VerifyOtpResponse>
    implements $VerifyOtpResponseCopyWith<$Res> {
  _$VerifyOtpResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_VerifyOtpResponseCopyWith<$Res>
    implements $VerifyOtpResponseCopyWith<$Res> {
  factory _$$_VerifyOtpResponseCopyWith(_$_VerifyOtpResponse value,
          $Res Function(_$_VerifyOtpResponse) then) =
      __$$_VerifyOtpResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? status_code, String? msg, dynamic result});
}

/// @nodoc
class __$$_VerifyOtpResponseCopyWithImpl<$Res>
    extends _$VerifyOtpResponseCopyWithImpl<$Res, _$_VerifyOtpResponse>
    implements _$$_VerifyOtpResponseCopyWith<$Res> {
  __$$_VerifyOtpResponseCopyWithImpl(
      _$_VerifyOtpResponse _value, $Res Function(_$_VerifyOtpResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = null,
  }) {
    return _then(_$_VerifyOtpResponse(
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
class _$_VerifyOtpResponse implements _VerifyOtpResponse {
  const _$_VerifyOtpResponse(
      {this.status, this.status_code, this.msg, this.result});

  factory _$_VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyOtpResponseFromJson(json);

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
    return 'VerifyOtpResponse(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtpResponse &&
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
  _$$_VerifyOtpResponseCopyWith<_$_VerifyOtpResponse> get copyWith =>
      __$$_VerifyOtpResponseCopyWithImpl<_$_VerifyOtpResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyOtpResponseToJson(
      this,
    );
  }
}

abstract class _VerifyOtpResponse implements VerifyOtpResponse {
  const factory _VerifyOtpResponse(
      {final String? status,
      final String? status_code,
      final String? msg,
      final dynamic result}) = _$_VerifyOtpResponse;

  factory _VerifyOtpResponse.fromJson(Map<String, dynamic> json) =
      _$_VerifyOtpResponse.fromJson;

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
  _$$_VerifyOtpResponseCopyWith<_$_VerifyOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

OtpResult _$OtpResultFromJson(Map<String, dynamic> json) {
  return _OtpResult.fromJson(json);
}

/// @nodoc
mixin _$OtpResult {
  String? get id => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userEmail => throw _privateConstructorUsedError;
  String? get userFirmName => throw _privateConstructorUsedError;
  String? get userGstNum => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  String? get mobile_no => throw _privateConstructorUsedError;
  String? get profile_image => throw _privateConstructorUsedError;
  String? get is_active => throw _privateConstructorUsedError;
  String? get is_verify => throw _privateConstructorUsedError;
  String? get is_admin => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get password_reset_code => throw _privateConstructorUsedError;
  String? get last_ip => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;

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
  $Res call(
      {String? id,
      String? userName,
      String? userEmail,
      String? userFirmName,
      String? userGstNum,
      String? otp,
      String? mobile_no,
      String? profile_image,
      String? is_active,
      String? is_verify,
      String? is_admin,
      String? token,
      String? password_reset_code,
      String? last_ip,
      String? created_at,
      String? updated_at});
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
    Object? id = freezed,
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? userFirmName = freezed,
    Object? userGstNum = freezed,
    Object? otp = freezed,
    Object? mobile_no = freezed,
    Object? profile_image = freezed,
    Object? is_active = freezed,
    Object? is_verify = freezed,
    Object? is_admin = freezed,
    Object? token = freezed,
    Object? password_reset_code = freezed,
    Object? last_ip = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userFirmName: freezed == userFirmName
          ? _value.userFirmName
          : userFirmName // ignore: cast_nullable_to_non_nullable
              as String?,
      userGstNum: freezed == userGstNum
          ? _value.userGstNum
          : userGstNum // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_no: freezed == mobile_no
          ? _value.mobile_no
          : mobile_no // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as String?,
      is_verify: freezed == is_verify
          ? _value.is_verify
          : is_verify // ignore: cast_nullable_to_non_nullable
              as String?,
      is_admin: freezed == is_admin
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      password_reset_code: freezed == password_reset_code
          ? _value.password_reset_code
          : password_reset_code // ignore: cast_nullable_to_non_nullable
              as String?,
      last_ip: freezed == last_ip
          ? _value.last_ip
          : last_ip // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {String? id,
      String? userName,
      String? userEmail,
      String? userFirmName,
      String? userGstNum,
      String? otp,
      String? mobile_no,
      String? profile_image,
      String? is_active,
      String? is_verify,
      String? is_admin,
      String? token,
      String? password_reset_code,
      String? last_ip,
      String? created_at,
      String? updated_at});
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
    Object? id = freezed,
    Object? userName = freezed,
    Object? userEmail = freezed,
    Object? userFirmName = freezed,
    Object? userGstNum = freezed,
    Object? otp = freezed,
    Object? mobile_no = freezed,
    Object? profile_image = freezed,
    Object? is_active = freezed,
    Object? is_verify = freezed,
    Object? is_admin = freezed,
    Object? token = freezed,
    Object? password_reset_code = freezed,
    Object? last_ip = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$_OtpResult(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userFirmName: freezed == userFirmName
          ? _value.userFirmName
          : userFirmName // ignore: cast_nullable_to_non_nullable
              as String?,
      userGstNum: freezed == userGstNum
          ? _value.userGstNum
          : userGstNum // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_no: freezed == mobile_no
          ? _value.mobile_no
          : mobile_no // ignore: cast_nullable_to_non_nullable
              as String?,
      profile_image: freezed == profile_image
          ? _value.profile_image
          : profile_image // ignore: cast_nullable_to_non_nullable
              as String?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as String?,
      is_verify: freezed == is_verify
          ? _value.is_verify
          : is_verify // ignore: cast_nullable_to_non_nullable
              as String?,
      is_admin: freezed == is_admin
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      password_reset_code: freezed == password_reset_code
          ? _value.password_reset_code
          : password_reset_code // ignore: cast_nullable_to_non_nullable
              as String?,
      last_ip: freezed == last_ip
          ? _value.last_ip
          : last_ip // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtpResult implements _OtpResult {
  const _$_OtpResult(
      {this.id,
      this.userName,
      this.userEmail,
      this.userFirmName,
      this.userGstNum,
      this.otp,
      this.mobile_no,
      this.profile_image,
      this.is_active,
      this.is_verify,
      this.is_admin,
      this.token,
      this.password_reset_code,
      this.last_ip,
      this.created_at,
      this.updated_at});

  factory _$_OtpResult.fromJson(Map<String, dynamic> json) =>
      _$$_OtpResultFromJson(json);

  @override
  final String? id;
  @override
  final String? userName;
  @override
  final String? userEmail;
  @override
  final String? userFirmName;
  @override
  final String? userGstNum;
  @override
  final String? otp;
  @override
  final String? mobile_no;
  @override
  final String? profile_image;
  @override
  final String? is_active;
  @override
  final String? is_verify;
  @override
  final String? is_admin;
  @override
  final String? token;
  @override
  final String? password_reset_code;
  @override
  final String? last_ip;
  @override
  final String? created_at;
  @override
  final String? updated_at;

  @override
  String toString() {
    return 'OtpResult(id: $id, userName: $userName, userEmail: $userEmail, userFirmName: $userFirmName, userGstNum: $userGstNum, otp: $otp, mobile_no: $mobile_no, profile_image: $profile_image, is_active: $is_active, is_verify: $is_verify, is_admin: $is_admin, token: $token, password_reset_code: $password_reset_code, last_ip: $last_ip, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpResult &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userFirmName, userFirmName) ||
                other.userFirmName == userFirmName) &&
            (identical(other.userGstNum, userGstNum) ||
                other.userGstNum == userGstNum) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.mobile_no, mobile_no) ||
                other.mobile_no == mobile_no) &&
            (identical(other.profile_image, profile_image) ||
                other.profile_image == profile_image) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.is_verify, is_verify) ||
                other.is_verify == is_verify) &&
            (identical(other.is_admin, is_admin) ||
                other.is_admin == is_admin) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.password_reset_code, password_reset_code) ||
                other.password_reset_code == password_reset_code) &&
            (identical(other.last_ip, last_ip) || other.last_ip == last_ip) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userName,
      userEmail,
      userFirmName,
      userGstNum,
      otp,
      mobile_no,
      profile_image,
      is_active,
      is_verify,
      is_admin,
      token,
      password_reset_code,
      last_ip,
      created_at,
      updated_at);

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
  const factory _OtpResult(
      {final String? id,
      final String? userName,
      final String? userEmail,
      final String? userFirmName,
      final String? userGstNum,
      final String? otp,
      final String? mobile_no,
      final String? profile_image,
      final String? is_active,
      final String? is_verify,
      final String? is_admin,
      final String? token,
      final String? password_reset_code,
      final String? last_ip,
      final String? created_at,
      final String? updated_at}) = _$_OtpResult;

  factory _OtpResult.fromJson(Map<String, dynamic> json) =
      _$_OtpResult.fromJson;

  @override
  String? get id;
  @override
  String? get userName;
  @override
  String? get userEmail;
  @override
  String? get userFirmName;
  @override
  String? get userGstNum;
  @override
  String? get otp;
  @override
  String? get mobile_no;
  @override
  String? get profile_image;
  @override
  String? get is_active;
  @override
  String? get is_verify;
  @override
  String? get is_admin;
  @override
  String? get token;
  @override
  String? get password_reset_code;
  @override
  String? get last_ip;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$_OtpResultCopyWith<_$_OtpResult> get copyWith =>
      throw _privateConstructorUsedError;
}
