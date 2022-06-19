import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_demo/domain/failures.dart';
import 'package:ecommerce_demo/domain/i_api_repository.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:ecommerce_demo/domain/dartz_x.dart';

part 'api_data_event.dart';
part 'api_data_state.dart';
part 'api_data_bloc.freezed.dart';

const throttleDuration = Duration(milliseconds: 250);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

@injectable
class ApiDataBloc extends Bloc<ApiDataEvent, ApiDataState> {
  final IApiRepository _iApiRepository;
  ApiDataBloc(this._iApiRepository) : super(ApiDataState.initial()) {
    on<_WatchAllStarted>(
      (event, emit) async {
        if (state.hasReachedMax) return;

        try {
          if (state.status == ApiStatus.initial) {
            final products = await _iApiRepository.getAllProducts();
            if (products.asRight().isEmpty) {
              return emit(state.copyWith(
                status: ApiStatus.failure,
                productList: [],
                hasReachedMax: false,
              ));
            } else {
              return emit(state.copyWith(
                status: ApiStatus.success,
                productList: products.asRight(),
                hasReachedMax: false,
              ));
            }
          }
          final products =
              await _iApiRepository.getAllProducts(state.productList.length);

          emit(products.asRight().isEmpty
              ? state.copyWith(hasReachedMax: true)
              : state.copyWith(
                  status: ApiStatus.success,
                  productList: List.of(state.productList)
                    ..addAll(products.asRight()),
                  hasReachedMax: false,
                ));
        } catch (_) {
          emit(state.copyWith(status: ApiStatus.failure));
        }
      },
      transformer: throttleDroppable(throttleDuration),
    );
  }
}
