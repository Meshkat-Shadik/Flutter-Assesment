part of 'search_bloc.dart';

enum SearchStatus { initial, success, failure }

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required SearchInput searchInput,
    required SearchStatus status,
    required bool hasReachedMax,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessages,
    required Option<Either<ValueFailure, List<Result>>> failureOrSuccessOption,
    required List<Result> searchedList,
  }) = _SearchState;
  factory SearchState.initial() => SearchState(
        searchInput: SearchInput(input: ''),
        status: SearchStatus.initial,
        hasReachedMax: false,
        isSubmitting: false,
        showErrorMessages: AutovalidateMode.disabled,
        failureOrSuccessOption: none(),
        searchedList: <Result>[],
      );
}
