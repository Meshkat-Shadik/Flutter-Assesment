part of 'api_data_bloc.dart';

@freezed
class ApiDataState with _$ApiDataState {
  const factory ApiDataState.initial() = _Initial;
  const factory ApiDataState.loadInProgress() = _LoadInProgress;
  const factory ApiDataState.loadSucess(Products products) = _LoadSucess;
  const factory ApiDataState.loadFailure(ApiDataFailure noteFailure) =
      _LoadFailure;
}
