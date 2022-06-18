// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllstarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllstarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllstarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllstarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDataEventCopyWith<$Res> {
  factory $ApiDataEventCopyWith(
          ApiDataEvent value, $Res Function(ApiDataEvent) then) =
      _$ApiDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiDataEventCopyWithImpl<$Res> implements $ApiDataEventCopyWith<$Res> {
  _$ApiDataEventCopyWithImpl(this._value, this._then);

  final ApiDataEvent _value;
  // ignore: unused_field
  final $Res Function(ApiDataEvent) _then;
}

/// @nodoc
abstract class _$$_WatchAllStartedCopyWith<$Res> {
  factory _$$_WatchAllStartedCopyWith(
          _$_WatchAllStarted value, $Res Function(_$_WatchAllStarted) then) =
      __$$_WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WatchAllStartedCopyWithImpl<$Res>
    extends _$ApiDataEventCopyWithImpl<$Res>
    implements _$$_WatchAllStartedCopyWith<$Res> {
  __$$_WatchAllStartedCopyWithImpl(
      _$_WatchAllStarted _value, $Res Function(_$_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _$_WatchAllStarted));

  @override
  _$_WatchAllStarted get _value => super._value as _$_WatchAllStarted;
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'ApiDataEvent.watchAllstarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllstarted,
  }) {
    return watchAllstarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllstarted,
  }) {
    return watchAllstarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllstarted,
    required TResult orElse(),
  }) {
    if (watchAllstarted != null) {
      return watchAllstarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllstarted,
  }) {
    return watchAllstarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
  }) {
    return watchAllstarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllstarted,
    required TResult orElse(),
  }) {
    if (watchAllstarted != null) {
      return watchAllstarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ApiDataEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
mixin _$ApiDataState {
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ApiDataFailure, Products>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiDataStateCopyWith<ApiDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDataStateCopyWith<$Res> {
  factory $ApiDataStateCopyWith(
          ApiDataState value, $Res Function(ApiDataState) then) =
      _$ApiDataStateCopyWithImpl<$Res>;
  $Res call(
      {bool hasReachedMax,
      bool isLoading,
      Option<Either<ApiDataFailure, Products>> failureOrSuccessOption});
}

/// @nodoc
class _$ApiDataStateCopyWithImpl<$Res> implements $ApiDataStateCopyWith<$Res> {
  _$ApiDataStateCopyWithImpl(this._value, this._then);

  final ApiDataState _value;
  // ignore: unused_field
  final $Res Function(ApiDataState) _then;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isLoading = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiDataFailure, Products>>,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiDataStateCopyWith<$Res>
    implements $ApiDataStateCopyWith<$Res> {
  factory _$$_ApiDataStateCopyWith(
          _$_ApiDataState value, $Res Function(_$_ApiDataState) then) =
      __$$_ApiDataStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool hasReachedMax,
      bool isLoading,
      Option<Either<ApiDataFailure, Products>> failureOrSuccessOption});
}

/// @nodoc
class __$$_ApiDataStateCopyWithImpl<$Res>
    extends _$ApiDataStateCopyWithImpl<$Res>
    implements _$$_ApiDataStateCopyWith<$Res> {
  __$$_ApiDataStateCopyWithImpl(
      _$_ApiDataState _value, $Res Function(_$_ApiDataState) _then)
      : super(_value, (v) => _then(v as _$_ApiDataState));

  @override
  _$_ApiDataState get _value => super._value as _$_ApiDataState;

  @override
  $Res call({
    Object? hasReachedMax = freezed,
    Object? isLoading = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_$_ApiDataState(
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiDataFailure, Products>>,
    ));
  }
}

/// @nodoc

class _$_ApiDataState implements _ApiDataState {
  const _$_ApiDataState(
      {required this.hasReachedMax,
      required this.isLoading,
      required this.failureOrSuccessOption});

  @override
  final bool hasReachedMax;
  @override
  final bool isLoading;
  @override
  final Option<Either<ApiDataFailure, Products>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ApiDataState(hasReachedMax: $hasReachedMax, isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiDataState &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccessOption, failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hasReachedMax),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(failureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_ApiDataStateCopyWith<_$_ApiDataState> get copyWith =>
      __$$_ApiDataStateCopyWithImpl<_$_ApiDataState>(this, _$identity);
}

abstract class _ApiDataState implements ApiDataState {
  const factory _ApiDataState(
      {required final bool hasReachedMax,
      required final bool isLoading,
      required final Option<Either<ApiDataFailure, Products>>
          failureOrSuccessOption}) = _$_ApiDataState;

  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiDataFailure, Products>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiDataStateCopyWith<_$_ApiDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
