// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_order_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyOrderList _$MyOrderListFromJson(Map<String, dynamic> json) {
  return _MyOrderList.fromJson(json);
}

/// @nodoc
mixin _$MyOrderList {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  dynamic get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyOrderListCopyWith<MyOrderList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrderListCopyWith<$Res> {
  factory $MyOrderListCopyWith(
          MyOrderList value, $Res Function(MyOrderList) then) =
      _$MyOrderListCopyWithImpl<$Res, MyOrderList>;
  @useResult
  $Res call({String? status, String? status_code, String? msg, dynamic result});
}

/// @nodoc
class _$MyOrderListCopyWithImpl<$Res, $Val extends MyOrderList>
    implements $MyOrderListCopyWith<$Res> {
  _$MyOrderListCopyWithImpl(this._value, this._then);

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
abstract class _$$_MyOrderListCopyWith<$Res>
    implements $MyOrderListCopyWith<$Res> {
  factory _$$_MyOrderListCopyWith(
          _$_MyOrderList value, $Res Function(_$_MyOrderList) then) =
      __$$_MyOrderListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? status_code, String? msg, dynamic result});
}

/// @nodoc
class __$$_MyOrderListCopyWithImpl<$Res>
    extends _$MyOrderListCopyWithImpl<$Res, _$_MyOrderList>
    implements _$$_MyOrderListCopyWith<$Res> {
  __$$_MyOrderListCopyWithImpl(
      _$_MyOrderList _value, $Res Function(_$_MyOrderList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = null,
  }) {
    return _then(_$_MyOrderList(
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
class _$_MyOrderList implements _MyOrderList {
  const _$_MyOrderList({this.status, this.status_code, this.msg, this.result});

  factory _$_MyOrderList.fromJson(Map<String, dynamic> json) =>
      _$$_MyOrderListFromJson(json);

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
    return 'MyOrderList(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyOrderList &&
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
  _$$_MyOrderListCopyWith<_$_MyOrderList> get copyWith =>
      __$$_MyOrderListCopyWithImpl<_$_MyOrderList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyOrderListToJson(
      this,
    );
  }
}

abstract class _MyOrderList implements MyOrderList {
  const factory _MyOrderList(
      {final String? status,
      final String? status_code,
      final String? msg,
      final dynamic result}) = _$_MyOrderList;

  factory _MyOrderList.fromJson(Map<String, dynamic> json) =
      _$_MyOrderList.fromJson;

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
  _$$_MyOrderListCopyWith<_$_MyOrderList> get copyWith =>
      throw _privateConstructorUsedError;
}
