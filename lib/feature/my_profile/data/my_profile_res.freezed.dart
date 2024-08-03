// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_profile_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyProfileResp _$MyProfileRespFromJson(Map<String, dynamic> json) {
  return _MyProfileResp.fromJson(json);
}

/// @nodoc
mixin _$MyProfileResp {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  List<dynamic>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyProfileRespCopyWith<MyProfileResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfileRespCopyWith<$Res> {
  factory $MyProfileRespCopyWith(
          MyProfileResp value, $Res Function(MyProfileResp) then) =
      _$MyProfileRespCopyWithImpl<$Res, MyProfileResp>;
  @useResult
  $Res call(
      {String? status,
      String? status_code,
      String? msg,
      List<dynamic>? result});
}

/// @nodoc
class _$MyProfileRespCopyWithImpl<$Res, $Val extends MyProfileResp>
    implements $MyProfileRespCopyWith<$Res> {
  _$MyProfileRespCopyWithImpl(this._value, this._then);

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
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyProfileRespCopyWith<$Res>
    implements $MyProfileRespCopyWith<$Res> {
  factory _$$_MyProfileRespCopyWith(
          _$_MyProfileResp value, $Res Function(_$_MyProfileResp) then) =
      __$$_MyProfileRespCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? status_code,
      String? msg,
      List<dynamic>? result});
}

/// @nodoc
class __$$_MyProfileRespCopyWithImpl<$Res>
    extends _$MyProfileRespCopyWithImpl<$Res, _$_MyProfileResp>
    implements _$$_MyProfileRespCopyWith<$Res> {
  __$$_MyProfileRespCopyWithImpl(
      _$_MyProfileResp _value, $Res Function(_$_MyProfileResp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_MyProfileResp(
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
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyProfileResp implements _MyProfileResp {
  const _$_MyProfileResp(
      {this.status, this.status_code, this.msg, final List<dynamic>? result})
      : _result = result;

  factory _$_MyProfileResp.fromJson(Map<String, dynamic> json) =>
      _$$_MyProfileRespFromJson(json);

  @override
  final String? status;
  @override
  final String? status_code;
  @override
  final String? msg;
  final List<dynamic>? _result;
  @override
  List<dynamic>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyProfileResp(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyProfileResp &&
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
  _$$_MyProfileRespCopyWith<_$_MyProfileResp> get copyWith =>
      __$$_MyProfileRespCopyWithImpl<_$_MyProfileResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyProfileRespToJson(
      this,
    );
  }
}

abstract class _MyProfileResp implements MyProfileResp {
  const factory _MyProfileResp(
      {final String? status,
      final String? status_code,
      final String? msg,
      final List<dynamic>? result}) = _$_MyProfileResp;

  factory _MyProfileResp.fromJson(Map<String, dynamic> json) =
      _$_MyProfileResp.fromJson;

  @override
  String? get status;
  @override
  String? get status_code;
  @override
  String? get msg;
  @override
  List<dynamic>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_MyProfileRespCopyWith<_$_MyProfileResp> get copyWith =>
      throw _privateConstructorUsedError;
}
