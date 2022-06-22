import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ApiDataFailure with _$ApiDataFailure {
  const factory ApiDataFailure.unexpected() = _Unexpected;
  const factory ApiDataFailure.internetConnectionFailure() =
      _InternetConnectionFailure;
  const factory ApiDataFailure.requestDenied() = _RequestDenied;
}
