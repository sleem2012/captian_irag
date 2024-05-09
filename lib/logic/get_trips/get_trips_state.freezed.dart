// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_trips_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetTripsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TripsData model) success,
    required TResult Function(KFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TripsData model)? success,
    TResult? Function(KFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TripsData model)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTripsStateInitial value) initial,
    required TResult Function(GetTripsStateLoading value) loading,
    required TResult Function(GetTripsStateSuccess value) success,
    required TResult Function(GetTripsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTripsStateInitial value)? initial,
    TResult? Function(GetTripsStateLoading value)? loading,
    TResult? Function(GetTripsStateSuccess value)? success,
    TResult? Function(GetTripsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTripsStateInitial value)? initial,
    TResult Function(GetTripsStateLoading value)? loading,
    TResult Function(GetTripsStateSuccess value)? success,
    TResult Function(GetTripsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTripsStateCopyWith<$Res> {
  factory $GetTripsStateCopyWith(
          GetTripsState value, $Res Function(GetTripsState) then) =
      _$GetTripsStateCopyWithImpl<$Res, GetTripsState>;
}

/// @nodoc
class _$GetTripsStateCopyWithImpl<$Res, $Val extends GetTripsState>
    implements $GetTripsStateCopyWith<$Res> {
  _$GetTripsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTripsStateInitialCopyWith<$Res> {
  factory _$$GetTripsStateInitialCopyWith(_$GetTripsStateInitial value,
          $Res Function(_$GetTripsStateInitial) then) =
      __$$GetTripsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTripsStateInitialCopyWithImpl<$Res>
    extends _$GetTripsStateCopyWithImpl<$Res, _$GetTripsStateInitial>
    implements _$$GetTripsStateInitialCopyWith<$Res> {
  __$$GetTripsStateInitialCopyWithImpl(_$GetTripsStateInitial _value,
      $Res Function(_$GetTripsStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTripsStateInitial implements GetTripsStateInitial {
  const _$GetTripsStateInitial();

  @override
  String toString() {
    return 'GetTripsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTripsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TripsData model) success,
    required TResult Function(KFailure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TripsData model)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TripsData model)? success,
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
    required TResult Function(GetTripsStateInitial value) initial,
    required TResult Function(GetTripsStateLoading value) loading,
    required TResult Function(GetTripsStateSuccess value) success,
    required TResult Function(GetTripsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTripsStateInitial value)? initial,
    TResult? Function(GetTripsStateLoading value)? loading,
    TResult? Function(GetTripsStateSuccess value)? success,
    TResult? Function(GetTripsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTripsStateInitial value)? initial,
    TResult Function(GetTripsStateLoading value)? loading,
    TResult Function(GetTripsStateSuccess value)? success,
    TResult Function(GetTripsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GetTripsStateInitial implements GetTripsState {
  const factory GetTripsStateInitial() = _$GetTripsStateInitial;
}

/// @nodoc
abstract class _$$GetTripsStateLoadingCopyWith<$Res> {
  factory _$$GetTripsStateLoadingCopyWith(_$GetTripsStateLoading value,
          $Res Function(_$GetTripsStateLoading) then) =
      __$$GetTripsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTripsStateLoadingCopyWithImpl<$Res>
    extends _$GetTripsStateCopyWithImpl<$Res, _$GetTripsStateLoading>
    implements _$$GetTripsStateLoadingCopyWith<$Res> {
  __$$GetTripsStateLoadingCopyWithImpl(_$GetTripsStateLoading _value,
      $Res Function(_$GetTripsStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTripsStateLoading implements GetTripsStateLoading {
  const _$GetTripsStateLoading();

  @override
  String toString() {
    return 'GetTripsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTripsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TripsData model) success,
    required TResult Function(KFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TripsData model)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TripsData model)? success,
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
    required TResult Function(GetTripsStateInitial value) initial,
    required TResult Function(GetTripsStateLoading value) loading,
    required TResult Function(GetTripsStateSuccess value) success,
    required TResult Function(GetTripsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTripsStateInitial value)? initial,
    TResult? Function(GetTripsStateLoading value)? loading,
    TResult? Function(GetTripsStateSuccess value)? success,
    TResult? Function(GetTripsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTripsStateInitial value)? initial,
    TResult Function(GetTripsStateLoading value)? loading,
    TResult Function(GetTripsStateSuccess value)? success,
    TResult Function(GetTripsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetTripsStateLoading implements GetTripsState {
  const factory GetTripsStateLoading() = _$GetTripsStateLoading;
}

/// @nodoc
abstract class _$$GetTripsStateSuccessCopyWith<$Res> {
  factory _$$GetTripsStateSuccessCopyWith(_$GetTripsStateSuccess value,
          $Res Function(_$GetTripsStateSuccess) then) =
      __$$GetTripsStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({TripsData model});
}

/// @nodoc
class __$$GetTripsStateSuccessCopyWithImpl<$Res>
    extends _$GetTripsStateCopyWithImpl<$Res, _$GetTripsStateSuccess>
    implements _$$GetTripsStateSuccessCopyWith<$Res> {
  __$$GetTripsStateSuccessCopyWithImpl(_$GetTripsStateSuccess _value,
      $Res Function(_$GetTripsStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$GetTripsStateSuccess(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TripsData,
    ));
  }
}

/// @nodoc

class _$GetTripsStateSuccess implements GetTripsStateSuccess {
  const _$GetTripsStateSuccess({required this.model});

  @override
  final TripsData model;

  @override
  String toString() {
    return 'GetTripsState.success(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTripsStateSuccess &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTripsStateSuccessCopyWith<_$GetTripsStateSuccess> get copyWith =>
      __$$GetTripsStateSuccessCopyWithImpl<_$GetTripsStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TripsData model) success,
    required TResult Function(KFailure error) error,
  }) {
    return success(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TripsData model)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return success?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TripsData model)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTripsStateInitial value) initial,
    required TResult Function(GetTripsStateLoading value) loading,
    required TResult Function(GetTripsStateSuccess value) success,
    required TResult Function(GetTripsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTripsStateInitial value)? initial,
    TResult? Function(GetTripsStateLoading value)? loading,
    TResult? Function(GetTripsStateSuccess value)? success,
    TResult? Function(GetTripsStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTripsStateInitial value)? initial,
    TResult Function(GetTripsStateLoading value)? loading,
    TResult Function(GetTripsStateSuccess value)? success,
    TResult Function(GetTripsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GetTripsStateSuccess implements GetTripsState {
  const factory GetTripsStateSuccess({required final TripsData model}) =
      _$GetTripsStateSuccess;

  TripsData get model;
  @JsonKey(ignore: true)
  _$$GetTripsStateSuccessCopyWith<_$GetTripsStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTripsStateErrorCopyWith<$Res> {
  factory _$$GetTripsStateErrorCopyWith(_$GetTripsStateError value,
          $Res Function(_$GetTripsStateError) then) =
      __$$GetTripsStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$GetTripsStateErrorCopyWithImpl<$Res>
    extends _$GetTripsStateCopyWithImpl<$Res, _$GetTripsStateError>
    implements _$$GetTripsStateErrorCopyWith<$Res> {
  __$$GetTripsStateErrorCopyWithImpl(
      _$GetTripsStateError _value, $Res Function(_$GetTripsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetTripsStateError(
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

class _$GetTripsStateError implements GetTripsStateError {
  const _$GetTripsStateError({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'GetTripsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTripsStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTripsStateErrorCopyWith<_$GetTripsStateError> get copyWith =>
      __$$GetTripsStateErrorCopyWithImpl<_$GetTripsStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TripsData model) success,
    required TResult Function(KFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TripsData model)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TripsData model)? success,
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
    required TResult Function(GetTripsStateInitial value) initial,
    required TResult Function(GetTripsStateLoading value) loading,
    required TResult Function(GetTripsStateSuccess value) success,
    required TResult Function(GetTripsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTripsStateInitial value)? initial,
    TResult? Function(GetTripsStateLoading value)? loading,
    TResult? Function(GetTripsStateSuccess value)? success,
    TResult? Function(GetTripsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTripsStateInitial value)? initial,
    TResult Function(GetTripsStateLoading value)? loading,
    TResult Function(GetTripsStateSuccess value)? success,
    TResult Function(GetTripsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetTripsStateError implements GetTripsState {
  const factory GetTripsStateError({required final KFailure error}) =
      _$GetTripsStateError;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$GetTripsStateErrorCopyWith<_$GetTripsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
