// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_trip_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartTripState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTripStateInitial value) initial,
    required TResult Function(StartTripStateLoading value) loading,
    required TResult Function(StartTripStateSuccess value) success,
    required TResult Function(StartTripStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTripStateInitial value)? initial,
    TResult? Function(StartTripStateLoading value)? loading,
    TResult? Function(StartTripStateSuccess value)? success,
    TResult? Function(StartTripStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTripStateInitial value)? initial,
    TResult Function(StartTripStateLoading value)? loading,
    TResult Function(StartTripStateSuccess value)? success,
    TResult Function(StartTripStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartTripStateCopyWith<$Res> {
  factory $StartTripStateCopyWith(
          StartTripState value, $Res Function(StartTripState) then) =
      _$StartTripStateCopyWithImpl<$Res, StartTripState>;
}

/// @nodoc
class _$StartTripStateCopyWithImpl<$Res, $Val extends StartTripState>
    implements $StartTripStateCopyWith<$Res> {
  _$StartTripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartTripStateInitialCopyWith<$Res> {
  factory _$$StartTripStateInitialCopyWith(_$StartTripStateInitial value,
          $Res Function(_$StartTripStateInitial) then) =
      __$$StartTripStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartTripStateInitialCopyWithImpl<$Res>
    extends _$StartTripStateCopyWithImpl<$Res, _$StartTripStateInitial>
    implements _$$StartTripStateInitialCopyWith<$Res> {
  __$$StartTripStateInitialCopyWithImpl(_$StartTripStateInitial _value,
      $Res Function(_$StartTripStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartTripStateInitial implements StartTripStateInitial {
  const _$StartTripStateInitial();

  @override
  String toString() {
    return 'StartTripState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartTripStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
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
    required TResult Function(StartTripStateInitial value) initial,
    required TResult Function(StartTripStateLoading value) loading,
    required TResult Function(StartTripStateSuccess value) success,
    required TResult Function(StartTripStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTripStateInitial value)? initial,
    TResult? Function(StartTripStateLoading value)? loading,
    TResult? Function(StartTripStateSuccess value)? success,
    TResult? Function(StartTripStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTripStateInitial value)? initial,
    TResult Function(StartTripStateLoading value)? loading,
    TResult Function(StartTripStateSuccess value)? success,
    TResult Function(StartTripStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StartTripStateInitial implements StartTripState {
  const factory StartTripStateInitial() = _$StartTripStateInitial;
}

/// @nodoc
abstract class _$$StartTripStateLoadingCopyWith<$Res> {
  factory _$$StartTripStateLoadingCopyWith(_$StartTripStateLoading value,
          $Res Function(_$StartTripStateLoading) then) =
      __$$StartTripStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartTripStateLoadingCopyWithImpl<$Res>
    extends _$StartTripStateCopyWithImpl<$Res, _$StartTripStateLoading>
    implements _$$StartTripStateLoadingCopyWith<$Res> {
  __$$StartTripStateLoadingCopyWithImpl(_$StartTripStateLoading _value,
      $Res Function(_$StartTripStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartTripStateLoading implements StartTripStateLoading {
  const _$StartTripStateLoading();

  @override
  String toString() {
    return 'StartTripState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartTripStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
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
    required TResult Function(StartTripStateInitial value) initial,
    required TResult Function(StartTripStateLoading value) loading,
    required TResult Function(StartTripStateSuccess value) success,
    required TResult Function(StartTripStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTripStateInitial value)? initial,
    TResult? Function(StartTripStateLoading value)? loading,
    TResult? Function(StartTripStateSuccess value)? success,
    TResult? Function(StartTripStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTripStateInitial value)? initial,
    TResult Function(StartTripStateLoading value)? loading,
    TResult Function(StartTripStateSuccess value)? success,
    TResult Function(StartTripStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StartTripStateLoading implements StartTripState {
  const factory StartTripStateLoading() = _$StartTripStateLoading;
}

/// @nodoc
abstract class _$$StartTripStateSuccessCopyWith<$Res> {
  factory _$$StartTripStateSuccessCopyWith(_$StartTripStateSuccess value,
          $Res Function(_$StartTripStateSuccess) then) =
      __$$StartTripStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartTripStateSuccessCopyWithImpl<$Res>
    extends _$StartTripStateCopyWithImpl<$Res, _$StartTripStateSuccess>
    implements _$$StartTripStateSuccessCopyWith<$Res> {
  __$$StartTripStateSuccessCopyWithImpl(_$StartTripStateSuccess _value,
      $Res Function(_$StartTripStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartTripStateSuccess implements StartTripStateSuccess {
  const _$StartTripStateSuccess();

  @override
  String toString() {
    return 'StartTripState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartTripStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTripStateInitial value) initial,
    required TResult Function(StartTripStateLoading value) loading,
    required TResult Function(StartTripStateSuccess value) success,
    required TResult Function(StartTripStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTripStateInitial value)? initial,
    TResult? Function(StartTripStateLoading value)? loading,
    TResult? Function(StartTripStateSuccess value)? success,
    TResult? Function(StartTripStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTripStateInitial value)? initial,
    TResult Function(StartTripStateLoading value)? loading,
    TResult Function(StartTripStateSuccess value)? success,
    TResult Function(StartTripStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class StartTripStateSuccess implements StartTripState {
  const factory StartTripStateSuccess() = _$StartTripStateSuccess;
}

/// @nodoc
abstract class _$$StartTripStateErrorCopyWith<$Res> {
  factory _$$StartTripStateErrorCopyWith(_$StartTripStateError value,
          $Res Function(_$StartTripStateError) then) =
      __$$StartTripStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$StartTripStateErrorCopyWithImpl<$Res>
    extends _$StartTripStateCopyWithImpl<$Res, _$StartTripStateError>
    implements _$$StartTripStateErrorCopyWith<$Res> {
  __$$StartTripStateErrorCopyWithImpl(
      _$StartTripStateError _value, $Res Function(_$StartTripStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StartTripStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as KFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KFailureCopyWith<$Res> get error {
    return $KFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$StartTripStateError implements StartTripStateError {
  const _$StartTripStateError({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'StartTripState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTripStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTripStateErrorCopyWith<_$StartTripStateError> get copyWith =>
      __$$StartTripStateErrorCopyWithImpl<_$StartTripStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTripStateInitial value) initial,
    required TResult Function(StartTripStateLoading value) loading,
    required TResult Function(StartTripStateSuccess value) success,
    required TResult Function(StartTripStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTripStateInitial value)? initial,
    TResult? Function(StartTripStateLoading value)? loading,
    TResult? Function(StartTripStateSuccess value)? success,
    TResult? Function(StartTripStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTripStateInitial value)? initial,
    TResult Function(StartTripStateLoading value)? loading,
    TResult Function(StartTripStateSuccess value)? success,
    TResult Function(StartTripStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StartTripStateError implements StartTripState {
  const factory StartTripStateError({required final KFailure error}) =
      _$StartTripStateError;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$StartTripStateErrorCopyWith<_$StartTripStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
