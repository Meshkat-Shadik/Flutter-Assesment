part of 'api_data_bloc.dart';

enum ApiStatus { initial, success, failure }

@freezed
class ApiDataState with _$ApiDataState {
  const factory ApiDataState({
    required bool hasReachedMax,
    required ApiStatus status,
    required Option<Either<ApiDataFailure, List<Result>>>
        failureOrSuccessOption,
    required List<Result> productList,
  }) = _ApiDataState;

  factory ApiDataState.initial() => ApiDataState(
        hasReachedMax: false,
        status: ApiStatus.initial,
        failureOrSuccessOption: none(),
        productList: <Result>[],
      );
}
