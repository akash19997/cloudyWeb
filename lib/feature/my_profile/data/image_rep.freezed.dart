// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_rep.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageResp _$ImageRespFromJson(Map<String, dynamic> json) {
  return _ImageResp.fromJson(json);
}

/// @nodoc
mixin _$ImageResp {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  List<dynamic>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageRespCopyWith<ImageResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageRespCopyWith<$Res> {
  factory $ImageRespCopyWith(ImageResp value, $Res Function(ImageResp) then) =
      _$ImageRespCopyWithImpl<$Res, ImageResp>;
  @useResult
  $Res call(
      {String? status,
      String? status_code,
      String? msg,
      List<dynamic>? result});
}

/// @nodoc
class _$ImageRespCopyWithImpl<$Res, $Val extends ImageResp>
    implements $ImageRespCopyWith<$Res> {
  _$ImageRespCopyWithImpl(this._value, this._then);

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
abstract class _$$_ImageRespCopyWith<$Res> implements $ImageRespCopyWith<$Res> {
  factory _$$_ImageRespCopyWith(
          _$_ImageResp value, $Res Function(_$_ImageResp) then) =
      __$$_ImageRespCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? status_code,
      String? msg,
      List<dynamic>? result});
}

/// @nodoc
class __$$_ImageRespCopyWithImpl<$Res>
    extends _$ImageRespCopyWithImpl<$Res, _$_ImageResp>
    implements _$$_ImageRespCopyWith<$Res> {
  __$$_ImageRespCopyWithImpl(
      _$_ImageResp _value, $Res Function(_$_ImageResp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ImageResp(
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
class _$_ImageResp implements _ImageResp {
  const _$_ImageResp(
      {this.status, this.status_code, this.msg, final List<dynamic>? result})
      : _result = result;

  factory _$_ImageResp.fromJson(Map<String, dynamic> json) =>
      _$$_ImageRespFromJson(json);

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
    return 'ImageResp(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageResp &&
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
  _$$_ImageRespCopyWith<_$_ImageResp> get copyWith =>
      __$$_ImageRespCopyWithImpl<_$_ImageResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageRespToJson(
      this,
    );
  }
}

abstract class _ImageResp implements ImageResp {
  const factory _ImageResp(
      {final String? status,
      final String? status_code,
      final String? msg,
      final List<dynamic>? result}) = _$_ImageResp;

  factory _ImageResp.fromJson(Map<String, dynamic> json) =
      _$_ImageResp.fromJson;

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
  _$$_ImageRespCopyWith<_$_ImageResp> get copyWith =>
      throw _privateConstructorUsedError;
}
