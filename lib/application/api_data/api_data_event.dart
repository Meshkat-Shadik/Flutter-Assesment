part of 'api_data_bloc.dart';

@freezed
class ApiDataEvent with _$ApiDataEvent {
  const factory ApiDataEvent.watchAllstarted() = _WatchAllStarted;
}