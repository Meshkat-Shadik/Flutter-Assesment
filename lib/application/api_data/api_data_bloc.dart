import 'package:bloc/bloc.dart';
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
  ApiDataBloc(this._iApiRepository) : super(const ApiDataState.initial()) {
    on<_WatchAllStarted>((event, emit) async {
      emit(const ApiDataState.loadInProgress());
      var products = await _iApiRepository.getAllProducts();
      emit(products.fold(
        (l) => ApiDataState.loadFailure(l),
        (prod) => ApiDataState.loadSucess(prod),
      ));
    });
  }
}
