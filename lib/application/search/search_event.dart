part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchChanged(String input) = _SearchChanged;
  const factory SearchEvent.searchButtonPressed() = _SearchButtonPressed;
}
