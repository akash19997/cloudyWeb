// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MyProfileResp? myProfileResp, ImageResp? imageResp)
        loaded,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MyProfileResp? myProfileResp, ImageResp? imageResp)?
        loaded,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MyProfileResp? myProfileResp, ImageResp? imageResp)?
        loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoading value) loading,
    required TResult Function(_DataLoaded value) loaded,
    required TResult Function(_DataFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoading value)? loading,
    TResult? Function(_DataLoaded value)? loaded,
    TResult? Function(_DataFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoading value)? loading,
    TResult Function(_DataLoaded value)? loaded,
    TResult Function(_DataFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyProfileStateCopyWith<$Res> {
  factory $MyProfileStateCopyWith(
          MyProfileState value, $Res Function(MyProfileState) then) =
      _$MyProfileStateCopyWithImpl<$Res, MyProfileState>;
}

/// @nodoc
class _$MyProfileStateCopyWithImpl<$Res, $Val extends MyProfileState>
    implements $MyProfileStateCopyWith<$Res> {
  _$MyProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MyProfileStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MyProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MyProfileResp? myProfileResp, ImageResp? imageResp)
        loaded,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MyProfileResp? myProfileResp, ImageResp? imageResp)?
        loaded,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MyProfileResp? myProfileResp, ImageResp? imageResp)?
        loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoading value) loading,
    required TResult Function(_DataLoaded value) loaded,
    required TResult Function(_DataFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoading value)? loading,
    TResult? Function(_DataLoaded value)? loaded,
    TResult? Function(_DataFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoading value)? loading,
    TResult Function(_DataLoaded value)? loaded,
    TResult Function(_DataFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MyProfileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DataLoadingCopyWith<$Res> {
  factory _$$_DataLoadingCopyWith(
          _$_DataLoading value, $Res Function(_$_DataLoading) then) =
      __$$_DataLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataLoadingCopyWithImpl<$Res>
    extends _$MyProfileStateCopyWithImpl<$Res, _$_DataLoading>
    implements _$$_DataLoadingCopyWith<$Res> {
  __$$_DataLoadingCopyWithImpl(
      _$_DataLoading _value, $Res Function(_$_DataLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DataLoading implements _DataLoading {
  const _$_DataLoading();

  @override
  String toString() {
    return 'MyProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MyProfileResp? myProfileResp, ImageResp? imageResp)
        loaded,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MyProfileResp? myProfileResp, ImageResp? imageResp)?
        loaded,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MyProfileResp? myProfileResp, ImageResp? imageResp)?
        loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoading value) loading,
    required TResult Function(_DataLoaded value) loaded,
    required TResult Function(_DataFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoading value)? loading,
    TResult? Function(_DataLoaded value)? loaded,
    TResult? Function(_DataFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoading value)? loading,
    TResult Function(_DataLoaded value)? loaded,
    TResult Function(_DataFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DataLoading implements MyProfileState {
  const factory _DataLoading() = _$_DataLoading;
}

/// @nodoc
abstract class _$$_DataLoadedCopyWith<$Res> {
  factory _$$_DataLoadedCopyWith(
          _$_DataLoaded value, $Res Function(_$_DataLoaded) then) =
      __$$_DataLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({MyProfileResp? myProfileResp, ImageResp? imageResp});

  $MyProfileRespCopyWith<$Res>? get myProfileResp;
  $ImageRespCopyWith<$Res>? get imageResp;
}

/// @nodoc
class __$$_DataLoadedCopyWithImpl<$Res>
    extends _$MyProfileStateCopyWithImpl<$Res, _$_DataLoaded>
    implements _$$_DataLoadedCopyWith<$Res> {
  __$$_DataLoadedCopyWithImpl(
      _$_DataLoaded _value, $Res Function(_$_DataLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myProfileResp = freezed,
    Object? imageResp = freezed,
  }) {
    return _then(_$_DataLoaded(
      myProfileResp: freezed == myProfileResp
          ? _value.myProfileResp
          : myProfileResp // ignore: cast_nullable_to_non_nullable
              as MyProfileResp?,
      imageResp: freezed == imageResp
          ? _value.imageResp
          : imageResp // ignore: cast_nullable_to_non_nullable
              as ImageResp?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MyProfileRespCopyWith<$Res>? get myProfileResp {
    if (_value.myProfileResp == null) {
      return null;
    }

    return $MyProfileRespCopyWith<$Res>(_value.myProfileResp!, (value) {
      return _then(_value.copyWith(myProfileResp: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageRespCopyWith<$Res>? get imageResp {
    if (_value.imageResp == null) {
      return null;
    }

    return $ImageRespCopyWith<$Res>(_value.imageResp!, (value) {
      return _then(_value.copyWith(imageResp: value));
    });
  }
}

/// @nodoc

class _$_DataLoaded implements _DataLoaded {
  const _$_DataLoaded({this.myProfileResp, this.imageResp});

  @override
  final MyProfileResp? myProfileResp;
  @override
  final ImageResp? imageResp;

  @override
  String toString() {
    return 'MyProfileState.loaded(myProfileResp: $myProfileResp, imageResp: $imageResp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataLoaded &&
            (identical(other.myProfileResp, myProfileResp) ||
                other.myProfileResp == myProfileResp) &&
            (identical(other.imageResp, imageResp) ||
                other.imageResp == imageResp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, myProfileResp, imageResp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      __$$_DataLoadedCopyWithImpl<_$_DataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MyProfileResp? myProfileResp, ImageResp? imageResp)
        loaded,
    required TResult Function() failure,
  }) {
    return loaded(myProfileResp, imageResp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MyProfileResp? myProfileResp, ImageResp? imageResp)?
        loaded,
    TResult? Function()? failure,
  }) {
    return loaded?.call(myProfileResp, imageResp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MyProfileResp? myProfileResp, ImageResp? imageResp)?
        loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(myProfileResp, imageResp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoading value) loading,
    required TResult Function(_DataLoaded value) loaded,
    required TResult Function(_DataFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoading value)? loading,
    TResult? Function(_DataLoaded value)? loaded,
    TResult? Function(_DataFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoading value)? loading,
    TResult Function(_DataLoaded value)? loaded,
    TResult Function(_DataFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _DataLoaded implements MyProfileState {
  const factory _DataLoaded(
      {final MyProfileResp? myProfileResp,
      final ImageResp? imageResp}) = _$_DataLoaded;

  MyProfileResp? get myProfileResp;
  ImageResp? get imageResp;
  @JsonKey(ignore: true)
  _$$_DataLoadedCopyWith<_$_DataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataFailureCopyWith<$Res> {
  factory _$$_DataFailureCopyWith(
          _$_DataFailure value, $Res Function(_$_DataFailure) then) =
      __$$_DataFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataFailureCopyWithImpl<$Res>
    extends _$MyProfileStateCopyWithImpl<$Res, _$_DataFailure>
    implements _$$_DataFailureCopyWith<$Res> {
  __$$_DataFailureCopyWithImpl(
      _$_DataFailure _value, $Res Function(_$_DataFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DataFailure implements _DataFailure {
  const _$_DataFailure();

  @override
  String toString() {
    return 'MyProfileState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MyProfileResp? myProfileResp, ImageResp? imageResp)
        loaded,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MyProfileResp? myProfileResp, ImageResp? imageResp)?
        loaded,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MyProfileResp? myProfileResp, ImageResp? imageResp)?
        loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DataLoading value) loading,
    required TResult Function(_DataLoaded value) loaded,
    required TResult Function(_DataFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DataLoading value)? loading,
    TResult? Function(_DataLoaded value)? loaded,
    TResult? Function(_DataFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DataLoading value)? loading,
    TResult Function(_DataLoaded value)? loaded,
    TResult Function(_DataFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _DataFailure implements MyProfileState {
  const factory _DataFailure() = _$_DataFailure;
}
