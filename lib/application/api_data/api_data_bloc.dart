import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_demo/domain/failures.dart';
import 'package:ecommerce_demo/domain/i_api_repository.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'api_data_event.dart';
part 'api_data_state.dart';
part 'api_data_bloc.freezed.dart';

@injectable
class ApiDataBloc extends Bloc<ApiDataEvent, ApiDataState> {
  final IApiRepository _iApiRepository;
  ApiDataBloc(this._iApiRepository) : super(ApiDataState.initial()) {
    on<_WatchAllStarted>((event, emit) async {
      Either<ApiDataFailure, Products>? failureOrSuccess;
      if (state.hasReachedMax) return;
      emit(
        state.copyWith(
          isLoading: true,
          hasReachedMax: false,
          failureOrSuccessOption: none(),
        ),
      );
      failureOrSuccess = await _iApiRepository.getAllProducts();

      emit(
        failureOrSuccess.fold(
          (l) => state.copyWith(
            failureOrSuccessOption: optionOf(failureOrSuccess),
            hasReachedMax: false,
            isLoading: false,
          ),
          (r) => r.results!.isEmpty
              ? state.copyWith(
                  hasReachedMax: true,
                )
              : state.copyWith(
                  isLoading: false,
                  hasReachedMax: false,
                  failureOrSuccessOption: optionOf(failureOrSuccess),
                ),
        ),
      );
    });
  }
}
