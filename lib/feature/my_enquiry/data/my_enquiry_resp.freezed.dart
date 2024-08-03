// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_enquiry_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EnquiryResponse _$EnquiryResponseFromJson(Map<String, dynamic> json) {
  return _EnquiryResponse.fromJson(json);
}

/// @nodoc
mixin _$EnquiryResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  dynamic get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnquiryResponseCopyWith<EnquiryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnquiryResponseCopyWith<$Res> {
  factory $EnquiryResponseCopyWith(
          EnquiryResponse value, $Res Function(EnquiryResponse) then) =
      _$EnquiryResponseCopyWithImpl<$Res, EnquiryResponse>;
  @useResult
  $Res call({String? status, String? status_code, String? msg, dynamic result});
}

/// @nodoc
class _$EnquiryResponseCopyWithImpl<$Res, $Val extends EnquiryResponse>
    implements $EnquiryResponseCopyWith<$Res> {
  _$EnquiryResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_EnquiryResponseCopyWith<$Res>
    implements $EnquiryResponseCopyWith<$Res> {
  factory _$$_EnquiryResponseCopyWith(
          _$_EnquiryResponse value, $Res Function(_$_EnquiryResponse) then) =
      __$$_EnquiryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? status_code, String? msg, dynamic result});
}

/// @nodoc
class __$$_EnquiryResponseCopyWithImpl<$Res>
    extends _$EnquiryResponseCopyWithImpl<$Res, _$_EnquiryResponse>
    implements _$$_EnquiryResponseCopyWith<$Res> {
  __$$_EnquiryResponseCopyWithImpl(
      _$_EnquiryResponse _value, $Res Function(_$_EnquiryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = null,
  }) {
    return _then(_$_EnquiryResponse(
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
class _$_EnquiryResponse implements _EnquiryResponse {
  const _$_EnquiryResponse(
      {this.status, this.status_code, this.msg, this.result});

  factory _$_EnquiryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EnquiryResponseFromJson(json);

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
    return 'EnquiryResponse(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnquiryResponse &&
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
  _$$_EnquiryResponseCopyWith<_$_EnquiryResponse> get copyWith =>
      __$$_EnquiryResponseCopyWithImpl<_$_EnquiryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnquiryResponseToJson(
      this,
    );
  }
}

abstract class _EnquiryResponse implements EnquiryResponse {
  const factory _EnquiryResponse(
      {final String? status,
      final String? status_code,
      final String? msg,
      final dynamic result}) = _$_EnquiryResponse;

  factory _EnquiryResponse.fromJson(Map<String, dynamic> json) =
      _$_EnquiryResponse.fromJson;

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
  _$$_EnquiryResponseCopyWith<_$_EnquiryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
