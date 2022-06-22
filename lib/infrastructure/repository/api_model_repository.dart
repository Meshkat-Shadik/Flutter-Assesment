import 'package:dartz/dartz.dart';
import 'package:ecommerce_demo/domain/i_api_repository.dart';
import 'package:ecommerce_demo/domain/search/value_objects.dart';
import 'package:ecommerce_demo/infrastructure/core/api.dart';
import 'package:ecommerce_demo/infrastructure/model/api_data_model.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:ecommerce_demo/domain/failures/failures.dart';

@LazySingleton(as: IApiRepository)
class ApiModelRepository implements IApiRepository {
  @override
  Future<Either<ApiDataFailure, List<Result>>> getAllProducts(
      [int offset = 0, int limit = 10]) async {
    try {
      final response = await http.get(
        Uri.parse('${ApiPath.allData}limit=$limit&offset=$offset'),
      );
      final bodyData = apiDataFromJson(response.bodyBytes);
      final products = bodyData.data?.products?.results;
      // print(products!.results!.first.productName);
      if (products != null) {
        return right(products);
      } else {
        return left(const ApiDataFailure.requestDenied());
      }
    } catch (e) {
      return left(const ApiDataFailure.unexpected());
    }
  }

  @override
  Future<Either<ApiDataFailure, List<Result>>> getSearchedProduct(
      SearchInput name,
      [int offset = 0,
      int limit = 10]) async {
    final searchString = name.getOrCrash();

    try {
      final response = await http.get(
        Uri.parse(
            '${ApiPath.searchData}$searchString&limit=$limit&offset=$offset'),
      );
      final bodyData = apiDataFromJson(response.bodyBytes);
      final products = bodyData.data?.products?.results;
      // print(products!.results!.first.productName);
      if (products != null) {
        return right(products);
      } else {
        return left(const ApiDataFailure.requestDenied());
      }
    } catch (e) {
      return left(const ApiDataFailure.unexpected());
    }
  }
}
//x.data?.products?.results?.length