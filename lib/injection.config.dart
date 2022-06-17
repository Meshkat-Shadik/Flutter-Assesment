// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/api_data/api_data_bloc.dart' as _i5;
import 'domain/i_api_repository.dart' as _i3;
import 'infrastructure/repository/api_model_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IApiRepository>(() => _i4.ApiModelRepository());
  gh.factory<_i5.ApiDataBloc>(() => _i5.ApiDataBloc(get<_i3.IApiRepository>()));
  return get;
}
