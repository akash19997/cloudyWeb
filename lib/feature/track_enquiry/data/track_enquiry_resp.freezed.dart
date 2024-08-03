// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'track_enquiry_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackEnquiryResponse _$TrackEnquiryResponseFromJson(Map<String, dynamic> json) {
  return _TrackEnquiryResponse.fromJson(json);
}

/// @nodoc
mixin _$TrackEnquiryResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  dynamic get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackEnquiryResponseCopyWith<TrackEnquiryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackEnquiryResponseCopyWith<$Res> {
  factory $TrackEnquiryResponseCopyWith(TrackEnquiryResponse value,
          $Res Function(TrackEnquiryResponse) then) =
      _$TrackEnquiryResponseCopyWithImpl<$Res, TrackEnquiryResponse>;
  @useResult
  $Res call({String? status, String? status_code, String? msg, dynamic result});
}

/// @nodoc
class _$TrackEnquiryResponseCopyWithImpl<$Res,
        $Val extends TrackEnquiryResponse>
    implements $TrackEnquiryResponseCopyWith<$Res> {
  _$TrackEnquiryResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_TrackEnquiryResponseCopyWith<$Res>
    implements $TrackEnquiryResponseCopyWith<$Res> {
  factory _$$_TrackEnquiryResponseCopyWith(_$_TrackEnquiryResponse value,
          $Res Function(_$_TrackEnquiryResponse) then) =
      __$$_TrackEnquiryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? status_code, String? msg, dynamic result});
}

/// @nodoc
class __$$_TrackEnquiryResponseCopyWithImpl<$Res>
    extends _$TrackEnquiryResponseCopyWithImpl<$Res, _$_TrackEnquiryResponse>
    implements _$$_TrackEnquiryResponseCopyWith<$Res> {
  __$$_TrackEnquiryResponseCopyWithImpl(_$_TrackEnquiryResponse _value,
      $Res Function(_$_TrackEnquiryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = null,
  }) {
    return _then(_$_TrackEnquiryResponse(
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
class _$_TrackEnquiryResponse implements _TrackEnquiryResponse {
  const _$_TrackEnquiryResponse(
      {this.status, this.status_code, this.msg, this.result});

  factory _$_TrackEnquiryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TrackEnquiryResponseFromJson(json);

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
    return 'TrackEnquiryResponse(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackEnquiryResponse &&
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
  _$$_TrackEnquiryResponseCopyWith<_$_TrackEnquiryResponse> get copyWith =>
      __$$_TrackEnquiryResponseCopyWithImpl<_$_TrackEnquiryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackEnquiryResponseToJson(
      this,
    );
  }
}

abstract class _TrackEnquiryResponse implements TrackEnquiryResponse {
  const factory _TrackEnquiryResponse(
      {final String? status,
      final String? status_code,
      final String? msg,
      final dynamic result}) = _$_TrackEnquiryResponse;

  factory _TrackEnquiryResponse.fromJson(Map<String, dynamic> json) =
      _$_TrackEnquiryResponse.fromJson;

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
  _$$_TrackEnquiryResponseCopyWith<_$_TrackEnquiryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
