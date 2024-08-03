// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) {
  return _SignupResponse.fromJson(json);
}

/// @nodoc
mixin _$SignupResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  List<SignupResult>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupResponseCopyWith<SignupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupResponseCopyWith<$Res> {
  factory $SignupResponseCopyWith(
          SignupResponse value, $Res Function(SignupResponse) then) =
      _$SignupResponseCopyWithImpl<$Res, SignupResponse>;
  @useResult
  $Res call(
      {String? status,
      String? status_code,
      String? msg,
      List<SignupResult>? result});
}

/// @nodoc
class _$SignupResponseCopyWithImpl<$Res, $Val extends SignupResponse>
    implements $SignupResponseCopyWith<$Res> {
  _$SignupResponseCopyWithImpl(this._value, this._then);

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
    Object? result = freezed,
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
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SignupResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupResponseCopyWith<$Res>
    implements $SignupResponseCopyWith<$Res> {
  factory _$$_SignupResponseCopyWith(
          _$_SignupResponse value, $Res Function(_$_SignupResponse) then) =
      __$$_SignupResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? status_code,
      String? msg,
      List<SignupResult>? result});
}

/// @nodoc
class __$$_SignupResponseCopyWithImpl<$Res>
    extends _$SignupResponseCopyWithImpl<$Res, _$_SignupResponse>
    implements _$$_SignupResponseCopyWith<$Res> {
  __$$_SignupResponseCopyWithImpl(
      _$_SignupResponse _value, $Res Function(_$_SignupResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_SignupResponse(
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
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SignupResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignupResponse implements _SignupResponse {
  const _$_SignupResponse(
      {this.status,
      this.status_code,
      this.msg,
      final List<SignupResult>? result})
      : _result = result;

  factory _$_SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SignupResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? status_code;
  @override
  final String? msg;
  final List<SignupResult>? _result;
  @override
  List<SignupResult>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SignupResponse(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.status_code, status_code) ||
                other.status_code == status_code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, status_code, msg,
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupResponseCopyWith<_$_SignupResponse> get copyWith =>
      __$$_SignupResponseCopyWithImpl<_$_SignupResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupResponseToJson(
      this,
    );
  }
}

abstract class _SignupResponse implements SignupResponse {
  const factory _SignupResponse(
      {final String? status,
      final String? status_code,
      final String? msg,
      final List<SignupResult>? result}) = _$_SignupResponse;

  factory _SignupResponse.fromJson(Map<String, dynamic> json) =
      _$_SignupResponse.fromJson;

  @override
  String? get status;
  @override
  String? get status_code;
  @override
  String? get msg;
  @override
  List<SignupResult>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_SignupResponseCopyWith<_$_SignupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SignupResult _$SignupResultFromJson(Map<String, dynamic> json) {
  return _SignupResult.fromJson(json);
}

/// @nodoc
mixin _$SignupResult {
  String? get userName => throw _privateConstructorUsedError;
  String? get userFirmName => throw _privateConstructorUsedError;
  String? get mobile_no => throw _privateConstructorUsedError;
  String? get userEmail => throw _privateConstructorUsedError;
  String? get userGstNum => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupResultCopyWith<SignupResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupResultCopyWith<$Res> {
  factory $SignupResultCopyWith(
          SignupResult value, $Res Function(SignupResult) then) =
      _$SignupResultCopyWithImpl<$Res, SignupResult>;
  @useResult
  $Res call(
      {String? userName,
      String? userFirmName,
      String? mobile_no,
      String? userEmail,
      String? userGstNum,
      String? created_at,
      String? id});
}

/// @nodoc
class _$SignupResultCopyWithImpl<$Res, $Val extends SignupResult>
    implements $SignupResultCopyWith<$Res> {
  _$SignupResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userFirmName = freezed,
    Object? mobile_no = freezed,
    Object? userEmail = freezed,
    Object? userGstNum = freezed,
    Object? created_at = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userFirmName: freezed == userFirmName
          ? _value.userFirmName
          : userFirmName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_no: freezed == mobile_no
          ? _value.mobile_no
          : mobile_no // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userGstNum: freezed == userGstNum
          ? _value.userGstNum
          : userGstNum // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignupResultCopyWith<$Res>
    implements $SignupResultCopyWith<$Res> {
  factory _$$_SignupResultCopyWith(
          _$_SignupResult value, $Res Function(_$_SignupResult) then) =
      __$$_SignupResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userName,
      String? userFirmName,
      String? mobile_no,
      String? userEmail,
      String? userGstNum,
      String? created_at,
      String? id});
}

/// @nodoc
class __$$_SignupResultCopyWithImpl<$Res>
    extends _$SignupResultCopyWithImpl<$Res, _$_SignupResult>
    implements _$$_SignupResultCopyWith<$Res> {
  __$$_SignupResultCopyWithImpl(
      _$_SignupResult _value, $Res Function(_$_SignupResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? userFirmName = freezed,
    Object? mobile_no = freezed,
    Object? userEmail = freezed,
    Object? userGstNum = freezed,
    Object? created_at = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_SignupResult(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userFirmName: freezed == userFirmName
          ? _value.userFirmName
          : userFirmName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile_no: freezed == mobile_no
          ? _value.mobile_no
          : mobile_no // ignore: cast_nullable_to_non_nullable
              as String?,
      userEmail: freezed == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userGstNum: freezed == userGstNum
          ? _value.userGstNum
          : userGstNum // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignupResult implements _SignupResult {
  const _$_SignupResult(
      {this.userName,
      this.userFirmName,
      this.mobile_no,
      this.userEmail,
      this.userGstNum,
      this.created_at,
      this.id});

  factory _$_SignupResult.fromJson(Map<String, dynamic> json) =>
      _$$_SignupResultFromJson(json);

  @override
  final String? userName;
  @override
  final String? userFirmName;
  @override
  final String? mobile_no;
  @override
  final String? userEmail;
  @override
  final String? userGstNum;
  @override
  final String? created_at;
  @override
  final String? id;

  @override
  String toString() {
    return 'SignupResult(userName: $userName, userFirmName: $userFirmName, mobile_no: $mobile_no, userEmail: $userEmail, userGstNum: $userGstNum, created_at: $created_at, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignupResult &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userFirmName, userFirmName) ||
                other.userFirmName == userFirmName) &&
            (identical(other.mobile_no, mobile_no) ||
                other.mobile_no == mobile_no) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userGstNum, userGstNum) ||
                other.userGstNum == userGstNum) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, userFirmName,
      mobile_no, userEmail, userGstNum, created_at, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignupResultCopyWith<_$_SignupResult> get copyWith =>
      __$$_SignupResultCopyWithImpl<_$_SignupResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupResultToJson(
      this,
    );
  }
}

abstract class _SignupResult implements SignupResult {
  const factory _SignupResult(
      {final String? userName,
      final String? userFirmName,
      final String? mobile_no,
      final String? userEmail,
      final String? userGstNum,
      final String? created_at,
      final String? id}) = _$_SignupResult;

  factory _SignupResult.fromJson(Map<String, dynamic> json) =
      _$_SignupResult.fromJson;

  @override
  String? get userName;
  @override
  String? get userFirmName;
  @override
  String? get mobile_no;
  @override
  String? get userEmail;
  @override
  String? get userGstNum;
  @override
  String? get created_at;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_SignupResultCopyWith<_$_SignupResult> get copyWith =>
      throw _privateConstructorUsedError;
}
