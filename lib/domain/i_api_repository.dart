import 'package:dartz/dartz.dart';
import 'package:ecommerce_demo/domain/failures/failures.dart';
import 'package:ecommerce_demo/domain/search/value_objects.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';

abstract class IApiRepository {
  Future<Either<ApiDataFailure, List<Result>>> getAllProducts(
      [int offset = 0, int limit = 10]);

  Future<Either<ApiDataFailure, List<Result>>> getSearchedProduct(
    SearchInput name, [
    int offset = 0,
    int limit = 10,
  ]);
}
