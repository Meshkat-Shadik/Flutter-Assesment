// To parse this JSON data, do
//
//     final apiData = apiDataFromJson(jsonString);

import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'api_data_model.freezed.dart';
part 'api_data_model.g.dart';

ApiData apiDataFromJson(Uint8List str) =>
    ApiData.fromJson(json.decode(utf8.decode(str)));

Result resultDataFromJson(String str) => Result.fromJson(json.decode(str));

Products productDataFromJson(String str) => Products.fromJson(json.decode(str));

String apiDataToJson(ApiData data) => json.encode(data.toJson());

@freezed
abstract class ApiData with _$ApiData {
  const factory ApiData({
    String? status,
    Data? data,
  }) = _ApiData;

  factory ApiData.fromJson(Map<String, dynamic> json) =>
      _$ApiDataFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    List<dynamic>? categories,
    Products? products,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Products with _$Products {
  const factory Products({
    int? count,
    String? next,
    String? previous,
    List<Result>? results,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}

@freezed
abstract class Result with _$Result {
  const factory Result({
    int? id,
    Brand? brand,
    String? image,
    Charge? charge,
    List<Image>? images,
    String? slug,
    String? productName,
    String? model,
    String? commissionType,
    String? amount,
    String? tag,
    String? description,
    String? embaddedVideoLink,
    String? note,
    int? maximumOrder,
    int? stock,
    bool? isBackOrder,
    String? specification,
    String? warranty,
    bool? preOrder,
    double? productReview,
    bool? isSeller,
    bool? isPhone,
    bool? willShowEmi,
    dynamic badge,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic language,
    String? seller,
    dynamic combo,
    String? createdBy,
    dynamic updatedBy,
    List<int>? category,
    List<dynamic>? relatedProduct,
    List<dynamic>? filterValue,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
abstract class Brand with _$Brand {
  const factory Brand({
    String? name,
    String? image,
    String? headerImage,
    String? slug,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
abstract class Charge with _$Charge {
  const factory Charge({
    double? bookingPrice,
    double? currentCharge,
    dynamic discountCharge,
    double? sellingPrice,
    double? profit,
    bool? isEvent,
    dynamic eventId,
    bool? highlight,
    dynamic highlightId,
    bool? groupping,
    dynamic grouppingId,
    dynamic campaignSectionId,
    bool? campaignSection,
    dynamic message,
  }) = _Charge;

  factory Charge.fromJson(Map<String, dynamic> json) => _$ChargeFromJson(json);
}

@freezed
abstract class Image with _$Image {
  const factory Image({
    int? id,
    String? image,
    bool? isPrimary,
    int? product,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
