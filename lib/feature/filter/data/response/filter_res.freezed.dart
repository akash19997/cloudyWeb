// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YarnResp _$YarnRespFromJson(Map<String, dynamic> json) {
  return _YarnResp.fromJson(json);
}

/// @nodoc
mixin _$YarnResp {
  String? get status => throw _privateConstructorUsedError;
  String? get status_code => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  List<YarnList>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YarnRespCopyWith<YarnResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YarnRespCopyWith<$Res> {
  factory $YarnRespCopyWith(YarnResp value, $Res Function(YarnResp) then) =
      _$YarnRespCopyWithImpl<$Res, YarnResp>;
  @useResult
  $Res call(
      {String? status,
      String? status_code,
      String? msg,
      List<YarnList>? result});
}

/// @nodoc
class _$YarnRespCopyWithImpl<$Res, $Val extends YarnResp>
    implements $YarnRespCopyWith<$Res> {
  _$YarnRespCopyWithImpl(this._value, this._then);

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
              as List<YarnList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YarnRespCopyWith<$Res> implements $YarnRespCopyWith<$Res> {
  factory _$$_YarnRespCopyWith(
          _$_YarnResp value, $Res Function(_$_YarnResp) then) =
      __$$_YarnRespCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? status_code,
      String? msg,
      List<YarnList>? result});
}

/// @nodoc
class __$$_YarnRespCopyWithImpl<$Res>
    extends _$YarnRespCopyWithImpl<$Res, _$_YarnResp>
    implements _$$_YarnRespCopyWith<$Res> {
  __$$_YarnRespCopyWithImpl(
      _$_YarnResp _value, $Res Function(_$_YarnResp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? status_code = freezed,
    Object? msg = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_YarnResp(
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
              as List<YarnList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YarnResp implements _YarnResp {
  const _$_YarnResp(
      {this.status, this.status_code, this.msg, final List<YarnList>? result})
      : _result = result;

  factory _$_YarnResp.fromJson(Map<String, dynamic> json) =>
      _$$_YarnRespFromJson(json);

  @override
  final String? status;
  @override
  final String? status_code;
  @override
  final String? msg;
  final List<YarnList>? _result;
  @override
  List<YarnList>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'YarnResp(status: $status, status_code: $status_code, msg: $msg, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YarnResp &&
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
  _$$_YarnRespCopyWith<_$_YarnResp> get copyWith =>
      __$$_YarnRespCopyWithImpl<_$_YarnResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YarnRespToJson(
      this,
    );
  }
}

abstract class _YarnResp implements YarnResp {
  const factory _YarnResp(
      {final String? status,
      final String? status_code,
      final String? msg,
      final List<YarnList>? result}) = _$_YarnResp;

  factory _YarnResp.fromJson(Map<String, dynamic> json) = _$_YarnResp.fromJson;

  @override
  String? get status;
  @override
  String? get status_code;
  @override
  String? get msg;
  @override
  List<YarnList>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_YarnRespCopyWith<_$_YarnResp> get copyWith =>
      throw _privateConstructorUsedError;
}

YarnList _$YarnListFromJson(Map<String, dynamic> json) {
  return _YarnList.fromJson(json);
}

/// @nodoc
mixin _$YarnList {
  String? get yarnCatID => throw _privateConstructorUsedError;
  String? get yarnCatName => throw _privateConstructorUsedError;
  String? get dateAdded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YarnListCopyWith<YarnList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YarnListCopyWith<$Res> {
  factory $YarnListCopyWith(YarnList value, $Res Function(YarnList) then) =
      _$YarnListCopyWithImpl<$Res, YarnList>;
  @useResult
  $Res call({String? yarnCatID, String? yarnCatName, String? dateAdded});
}

/// @nodoc
class _$YarnListCopyWithImpl<$Res, $Val extends YarnList>
    implements $YarnListCopyWith<$Res> {
  _$YarnListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yarnCatID = freezed,
    Object? yarnCatName = freezed,
    Object? dateAdded = freezed,
  }) {
    return _then(_value.copyWith(
      yarnCatID: freezed == yarnCatID
          ? _value.yarnCatID
          : yarnCatID // ignore: cast_nullable_to_non_nullable
              as String?,
      yarnCatName: freezed == yarnCatName
          ? _value.yarnCatName
          : yarnCatName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YarnListCopyWith<$Res> implements $YarnListCopyWith<$Res> {
  factory _$$_YarnListCopyWith(
          _$_YarnList value, $Res Function(_$_YarnList) then) =
      __$$_YarnListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? yarnCatID, String? yarnCatName, String? dateAdded});
}

/// @nodoc
class __$$_YarnListCopyWithImpl<$Res>
    extends _$YarnListCopyWithImpl<$Res, _$_YarnList>
    implements _$$_YarnListCopyWith<$Res> {
  __$$_YarnListCopyWithImpl(
      _$_YarnList _value, $Res Function(_$_YarnList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yarnCatID = freezed,
    Object? yarnCatName = freezed,
    Object? dateAdded = freezed,
  }) {
    return _then(_$_YarnList(
      yarnCatID: freezed == yarnCatID
          ? _value.yarnCatID
          : yarnCatID // ignore: cast_nullable_to_non_nullable
              as String?,
      yarnCatName: freezed == yarnCatName
          ? _value.yarnCatName
          : yarnCatName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YarnList implements _YarnList {
  const _$_YarnList({this.yarnCatID, this.yarnCatName, this.dateAdded});

  factory _$_YarnList.fromJson(Map<String, dynamic> json) =>
      _$$_YarnListFromJson(json);

  @override
  final String? yarnCatID;
  @override
  final String? yarnCatName;
  @override
  final String? dateAdded;

  @override
  String toString() {
    return 'YarnList(yarnCatID: $yarnCatID, yarnCatName: $yarnCatName, dateAdded: $dateAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YarnList &&
            (identical(other.yarnCatID, yarnCatID) ||
                other.yarnCatID == yarnCatID) &&
            (identical(other.yarnCatName, yarnCatName) ||
                other.yarnCatName == yarnCatName) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, yarnCatID, yarnCatName, dateAdded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YarnListCopyWith<_$_YarnList> get copyWith =>
      __$$_YarnListCopyWithImpl<_$_YarnList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YarnListToJson(
      this,
    );
  }
}

abstract class _YarnList implements YarnList {
  const factory _YarnList(
      {final String? yarnCatID,
      final String? yarnCatName,
      final String? dateAdded}) = _$_YarnList;

  factory _YarnList.fromJson(Map<String, dynamic> json) = _$_YarnList.fromJson;

  @override
  String? get yarnCatID;
  @override
  String? get yarnCatName;
  @override
  String? get dateAdded;
  @override
  @JsonKey(ignore: true)
  _$$_YarnListCopyWith<_$_YarnList> get copyWith =>
      throw _privateConstructorUsedError;
}
