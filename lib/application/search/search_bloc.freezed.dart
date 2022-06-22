// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) searchChanged,
    required TResult Function() searchButtonPressed,
    required TResult Function() clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? searchChanged,
    TResult Function()? searchButtonPressed,
    TResult Function()? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? searchChanged,
    TResult Function()? searchButtonPressed,
    TResult Function()? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_SearchButtonPressed value) searchButtonPressed,
    required TResult Function(_ClearState value) clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_ClearState value)? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_ClearState value)? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$_SearchChangedCopyWith<$Res> {
  factory _$$_SearchChangedCopyWith(
          _$_SearchChanged value, $Res Function(_$_SearchChanged) then) =
      __$$_SearchChangedCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$$_SearchChangedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_SearchChangedCopyWith<$Res> {
  __$$_SearchChangedCopyWithImpl(
      _$_SearchChanged _value, $Res Function(_$_SearchChanged) _then)
      : super(_value, (v) => _then(v as _$_SearchChanged));

  @override
  _$_SearchChanged get _value => super._value as _$_SearchChanged;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_$_SearchChanged(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchChanged implements _SearchChanged {
  const _$_SearchChanged(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'SearchEvent.searchChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchChanged &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$$_SearchChangedCopyWith<_$_SearchChanged> get copyWith =>
      __$$_SearchChangedCopyWithImpl<_$_SearchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) searchChanged,
    required TResult Function() searchButtonPressed,
    required TResult Function() clearState,
  }) {
    return searchChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? searchChanged,
    TResult Function()? searchButtonPressed,
    TResult Function()? clearState,
  }) {
    return searchChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? searchChanged,
    TResult Function()? searchButtonPressed,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_SearchButtonPressed value) searchButtonPressed,
    required TResult Function(_ClearState value) clearState,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_ClearState value)? clearState,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements SearchEvent {
  const factory _SearchChanged(final String input) = _$_SearchChanged;

  String get input => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SearchChangedCopyWith<_$_SearchChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchButtonPressedCopyWith<$Res> {
  factory _$$_SearchButtonPressedCopyWith(_$_SearchButtonPressed value,
          $Res Function(_$_SearchButtonPressed) then) =
      __$$_SearchButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchButtonPressedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_SearchButtonPressedCopyWith<$Res> {
  __$$_SearchButtonPressedCopyWithImpl(_$_SearchButtonPressed _value,
      $Res Function(_$_SearchButtonPressed) _then)
      : super(_value, (v) => _then(v as _$_SearchButtonPressed));

  @override
  _$_SearchButtonPressed get _value => super._value as _$_SearchButtonPressed;
}

/// @nodoc

class _$_SearchButtonPressed implements _SearchButtonPressed {
  const _$_SearchButtonPressed();

  @override
  String toString() {
    return 'SearchEvent.searchButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) searchChanged,
    required TResult Function() searchButtonPressed,
    required TResult Function() clearState,
  }) {
    return searchButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? searchChanged,
    TResult Function()? searchButtonPressed,
    TResult Function()? clearState,
  }) {
    return searchButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? searchChanged,
    TResult Function()? searchButtonPressed,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (searchButtonPressed != null) {
      return searchButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_SearchButtonPressed value) searchButtonPressed,
    required TResult Function(_ClearState value) clearState,
  }) {
    return searchButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_ClearState value)? clearState,
  }) {
    return searchButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (searchButtonPressed != null) {
      return searchButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SearchButtonPressed implements SearchEvent {
  const factory _SearchButtonPressed() = _$_SearchButtonPressed;
}

/// @nodoc
abstract class _$$_ClearStateCopyWith<$Res> {
  factory _$$_ClearStateCopyWith(
          _$_ClearState value, $Res Function(_$_ClearState) then) =
      __$$_ClearStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearStateCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_ClearStateCopyWith<$Res> {
  __$$_ClearStateCopyWithImpl(
      _$_ClearState _value, $Res Function(_$_ClearState) _then)
      : super(_value, (v) => _then(v as _$_ClearState));

  @override
  _$_ClearState get _value => super._value as _$_ClearState;
}

/// @nodoc

class _$_ClearState implements _ClearState {
  const _$_ClearState();

  @override
  String toString() {
    return 'SearchEvent.clearState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClearState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) searchChanged,
    required TResult Function() searchButtonPressed,
    required TResult Function() clearState,
  }) {
    return clearState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? searchChanged,
    TResult Function()? searchButtonPressed,
    TResult Function()? clearState,
  }) {
    return clearState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? searchChanged,
    TResult Function()? searchButtonPressed,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_SearchButtonPressed value) searchButtonPressed,
    required TResult Function(_ClearState value) clearState,
  }) {
    return clearState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_ClearState value)? clearState,
  }) {
    return clearState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    TResult Function(_ClearState value)? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState(this);
    }
    return orElse();
  }
}

abstract class _ClearState implements SearchEvent {
  const factory _ClearState() = _$_ClearState;
}

/// @nodoc
mixin _$SearchState {
  SearchInput get searchInput => throw _privateConstructorUsedError;
  SearchStatus get status => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<ValueFailure, List<Result>>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  List<Result> get searchedList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {SearchInput searchInput,
      SearchStatus status,
      bool hasReachedMax,
      bool isSubmitting,
      AutovalidateMode showErrorMessages,
      Option<Either<ValueFailure, List<Result>>> failureOrSuccessOption,
      List<Result> searchedList});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? searchInput = freezed,
    Object? status = freezed,
    Object? hasReachedMax = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? searchedList = freezed,
  }) {
    return _then(_value.copyWith(
      searchInput: searchInput == freezed
          ? _value.searchInput
          : searchInput // ignore: cast_nullable_to_non_nullable
              as SearchInput,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, List<Result>>>,
      searchedList: searchedList == freezed
          ? _value.searchedList
          : searchedList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SearchInput searchInput,
      SearchStatus status,
      bool hasReachedMax,
      bool isSubmitting,
      AutovalidateMode showErrorMessages,
      Option<Either<ValueFailure, List<Result>>> failureOrSuccessOption,
      List<Result> searchedList});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? searchInput = freezed,
    Object? status = freezed,
    Object? hasReachedMax = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? failureOrSuccessOption = freezed,
    Object? searchedList = freezed,
  }) {
    return _then(_$_SearchState(
      searchInput: searchInput == freezed
          ? _value.searchInput
          : searchInput // ignore: cast_nullable_to_non_nullable
              as SearchInput,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, List<Result>>>,
      searchedList: searchedList == freezed
          ? _value._searchedList
          : searchedList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.searchInput,
      required this.status,
      required this.hasReachedMax,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.failureOrSuccessOption,
      required final List<Result> searchedList})
      : _searchedList = searchedList;

  @override
  final SearchInput searchInput;
  @override
  final SearchStatus status;
  @override
  final bool hasReachedMax;
  @override
  final bool isSubmitting;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final Option<Either<ValueFailure, List<Result>>> failureOrSuccessOption;
  final List<Result> _searchedList;
  @override
  List<Result> get searchedList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedList);
  }

  @override
  String toString() {
    return 'SearchState(searchInput: $searchInput, status: $status, hasReachedMax: $hasReachedMax, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, failureOrSuccessOption: $failureOrSuccessOption, searchedList: $searchedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other.searchInput, searchInput) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccessOption, failureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other._searchedList, _searchedList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchInput),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(hasReachedMax),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(failureOrSuccessOption),
      const DeepCollectionEquality().hash(_searchedList));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final SearchInput searchInput,
      required final SearchStatus status,
      required final bool hasReachedMax,
      required final bool isSubmitting,
      required final AutovalidateMode showErrorMessages,
      required final Option<Either<ValueFailure, List<Result>>>
          failureOrSuccessOption,
      required final List<Result> searchedList}) = _$_SearchState;

  @override
  SearchInput get searchInput => throw _privateConstructorUsedError;
  @override
  SearchStatus get status => throw _privateConstructorUsedError;
  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<ValueFailure, List<Result>>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  List<Result> get searchedList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
