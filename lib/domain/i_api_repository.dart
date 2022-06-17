import 'package:dartz/dartz.dart';
import 'package:ecommerce_demo/domain/failures.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';

abstract class IApiRepository {
  Future<Either<ApiDataFailure, Products>> getAllProducts();
}
