// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiData _$ApiDataFromJson(Map<String, dynamic> json) {
  return _ApiData.fromJson(json);
}

/// @nodoc
mixin _$ApiData {
  String? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiDataCopyWith<ApiData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDataCopyWith<$Res> {
  factory $ApiDataCopyWith(ApiData value, $Res Function(ApiData) then) =
      _$ApiDataCopyWithImpl<$Res>;
  $Res call({String? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ApiDataCopyWithImpl<$Res> implements $ApiDataCopyWith<$Res> {
  _$ApiDataCopyWithImpl(this._value, this._then);

  final ApiData _value;
  // ignore: unused_field
  final $Res Function(ApiData) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_ApiDataCopyWith<$Res> implements $ApiDataCopyWith<$Res> {
  factory _$$_ApiDataCopyWith(
          _$_ApiData value, $Res Function(_$_ApiData) then) =
      __$$_ApiDataCopyWithImpl<$Res>;
  @override
  $Res call({String? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_ApiDataCopyWithImpl<$Res> extends _$ApiDataCopyWithImpl<$Res>
    implements _$$_ApiDataCopyWith<$Res> {
  __$$_ApiDataCopyWithImpl(_$_ApiData _value, $Res Function(_$_ApiData) _then)
      : super(_value, (v) => _then(v as _$_ApiData));

  @override
  _$_ApiData get _value => super._value as _$_ApiData;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ApiData(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiData implements _ApiData {
  const _$_ApiData({this.status, this.data});

  factory _$_ApiData.fromJson(Map<String, dynamic> json) =>
      _$$_ApiDataFromJson(json);

  @override
  final String? status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'ApiData(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiData &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_ApiDataCopyWith<_$_ApiData> get copyWith =>
      __$$_ApiDataCopyWithImpl<_$_ApiData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiDataToJson(this);
  }
}

abstract class _ApiData implements ApiData {
  const factory _ApiData({final String? status, final Data? data}) = _$_ApiData;

  factory _ApiData.fromJson(Map<String, dynamic> json) = _$_ApiData.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiDataCopyWith<_$_ApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<dynamic>? get categories => throw _privateConstructorUsedError;
  Products? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<dynamic>? categories, Products? products});

  $ProductsCopyWith<$Res>? get products;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? categories = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products?,
    ));
  }

  @override
  $ProductsCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $ProductsCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic>? categories, Products? products});

  @override
  $ProductsCopyWith<$Res>? get products;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? categories = freezed,
    Object? products = freezed,
  }) {
    return _then(_$_Data(
      categories: categories == freezed
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({final List<dynamic>? categories, this.products})
      : _categories = categories;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  final List<dynamic>? _categories;
  @override
  List<dynamic>? get categories {
    final value = _categories;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Products? products;

  @override
  String toString() {
    return 'Data(categories: $categories, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final List<dynamic>? categories, final Products? products}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<dynamic>? get categories => throw _privateConstructorUsedError;
  @override
  Products? get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return _Products.fromJson(json);
}

/// @nodoc
mixin _$Products {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsCopyWith<Products> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCopyWith<$Res> {
  factory $ProductsCopyWith(Products value, $Res Function(Products) then) =
      _$ProductsCopyWithImpl<$Res>;
  $Res call(
      {int? count, String? next, String? previous, List<Result>? results});
}

/// @nodoc
class _$ProductsCopyWithImpl<$Res> implements $ProductsCopyWith<$Res> {
  _$ProductsCopyWithImpl(this._value, this._then);

  final Products _value;
  // ignore: unused_field
  final $Res Function(Products) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductsCopyWith<$Res> implements $ProductsCopyWith<$Res> {
  factory _$$_ProductsCopyWith(
          _$_Products value, $Res Function(_$_Products) then) =
      __$$_ProductsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? count, String? next, String? previous, List<Result>? results});
}

/// @nodoc
class __$$_ProductsCopyWithImpl<$Res> extends _$ProductsCopyWithImpl<$Res>
    implements _$$_ProductsCopyWith<$Res> {
  __$$_ProductsCopyWithImpl(
      _$_Products _value, $Res Function(_$_Products) _then)
      : super(_value, (v) => _then(v as _$_Products));

  @override
  _$_Products get _value => super._value as _$_Products;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_Products(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Products implements _Products {
  const _$_Products(
      {this.count, this.next, this.previous, final List<Result>? results})
      : _results = results;

  factory _$_Products.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Products(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Products &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_ProductsCopyWith<_$_Products> get copyWith =>
      __$$_ProductsCopyWithImpl<_$_Products>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsToJson(this);
  }
}

abstract class _Products implements Products {
  const factory _Products(
      {final int? count,
      final String? next,
      final String? previous,
      final List<Result>? results}) = _$_Products;

  factory _Products.fromJson(Map<String, dynamic> json) = _$_Products.fromJson;

  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  String? get next => throw _privateConstructorUsedError;
  @override
  String? get previous => throw _privateConstructorUsedError;
  @override
  List<Result>? get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsCopyWith<_$_Products> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  Brand? get brand => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  Charge? get charge => throw _privateConstructorUsedError;
  List<ApiImage>? get images => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get productName => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get commissionType => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get embaddedVideoLink => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int? get maximumOrder => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  bool? get isBackOrder => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  String? get warranty => throw _privateConstructorUsedError;
  bool? get preOrder => throw _privateConstructorUsedError;
  double? get productReview => throw _privateConstructorUsedError;
  bool? get isSeller => throw _privateConstructorUsedError;
  bool? get isPhone => throw _privateConstructorUsedError;
  bool? get willShowEmi => throw _privateConstructorUsedError;
  dynamic get badge => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic get language => throw _privateConstructorUsedError;
  String? get seller => throw _privateConstructorUsedError;
  dynamic get combo => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  dynamic get updatedBy => throw _privateConstructorUsedError;
  List<int>? get category => throw _privateConstructorUsedError;
  List<dynamic>? get relatedProduct => throw _privateConstructorUsedError;
  List<dynamic>? get filterValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      Brand? brand,
      String? image,
      Charge? charge,
      List<ApiImage>? images,
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
      List<dynamic>? filterValue});

  $BrandCopyWith<$Res>? get brand;
  $ChargeCopyWith<$Res>? get charge;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? image = freezed,
    Object? charge = freezed,
    Object? images = freezed,
    Object? slug = freezed,
    Object? productName = freezed,
    Object? model = freezed,
    Object? commissionType = freezed,
    Object? amount = freezed,
    Object? tag = freezed,
    Object? description = freezed,
    Object? embaddedVideoLink = freezed,
    Object? note = freezed,
    Object? maximumOrder = freezed,
    Object? stock = freezed,
    Object? isBackOrder = freezed,
    Object? specification = freezed,
    Object? warranty = freezed,
    Object? preOrder = freezed,
    Object? productReview = freezed,
    Object? isSeller = freezed,
    Object? isPhone = freezed,
    Object? willShowEmi = freezed,
    Object? badge = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? language = freezed,
    Object? seller = freezed,
    Object? combo = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? category = freezed,
    Object? relatedProduct = freezed,
    Object? filterValue = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as Charge?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ApiImage>?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      commissionType: commissionType == freezed
          ? _value.commissionType
          : commissionType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      embaddedVideoLink: embaddedVideoLink == freezed
          ? _value.embaddedVideoLink
          : embaddedVideoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumOrder: maximumOrder == freezed
          ? _value.maximumOrder
          : maximumOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      isBackOrder: isBackOrder == freezed
          ? _value.isBackOrder
          : isBackOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      specification: specification == freezed
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      warranty: warranty == freezed
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as String?,
      preOrder: preOrder == freezed
          ? _value.preOrder
          : preOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      productReview: productReview == freezed
          ? _value.productReview
          : productReview // ignore: cast_nullable_to_non_nullable
              as double?,
      isSeller: isSeller == freezed
          ? _value.isSeller
          : isSeller // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhone: isPhone == freezed
          ? _value.isPhone
          : isPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
      willShowEmi: willShowEmi == freezed
          ? _value.willShowEmi
          : willShowEmi // ignore: cast_nullable_to_non_nullable
              as bool?,
      badge: badge == freezed
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String?,
      combo: combo == freezed
          ? _value.combo
          : combo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      relatedProduct: relatedProduct == freezed
          ? _value.relatedProduct
          : relatedProduct // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      filterValue: filterValue == freezed
          ? _value.filterValue
          : filterValue // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }

  @override
  $BrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }

  @override
  $ChargeCopyWith<$Res>? get charge {
    if (_value.charge == null) {
      return null;
    }

    return $ChargeCopyWith<$Res>(_value.charge!, (value) {
      return _then(_value.copyWith(charge: value));
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      Brand? brand,
      String? image,
      Charge? charge,
      List<ApiImage>? images,
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
      List<dynamic>? filterValue});

  @override
  $BrandCopyWith<$Res>? get brand;
  @override
  $ChargeCopyWith<$Res>? get charge;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, (v) => _then(v as _$_Result));

  @override
  _$_Result get _value => super._value as _$_Result;

  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? image = freezed,
    Object? charge = freezed,
    Object? images = freezed,
    Object? slug = freezed,
    Object? productName = freezed,
    Object? model = freezed,
    Object? commissionType = freezed,
    Object? amount = freezed,
    Object? tag = freezed,
    Object? description = freezed,
    Object? embaddedVideoLink = freezed,
    Object? note = freezed,
    Object? maximumOrder = freezed,
    Object? stock = freezed,
    Object? isBackOrder = freezed,
    Object? specification = freezed,
    Object? warranty = freezed,
    Object? preOrder = freezed,
    Object? productReview = freezed,
    Object? isSeller = freezed,
    Object? isPhone = freezed,
    Object? willShowEmi = freezed,
    Object? badge = freezed,
    Object? isActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? language = freezed,
    Object? seller = freezed,
    Object? combo = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? category = freezed,
    Object? relatedProduct = freezed,
    Object? filterValue = freezed,
  }) {
    return _then(_$_Result(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as Charge?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ApiImage>?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      commissionType: commissionType == freezed
          ? _value.commissionType
          : commissionType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      embaddedVideoLink: embaddedVideoLink == freezed
          ? _value.embaddedVideoLink
          : embaddedVideoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      maximumOrder: maximumOrder == freezed
          ? _value.maximumOrder
          : maximumOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      isBackOrder: isBackOrder == freezed
          ? _value.isBackOrder
          : isBackOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      specification: specification == freezed
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      warranty: warranty == freezed
          ? _value.warranty
          : warranty // ignore: cast_nullable_to_non_nullable
              as String?,
      preOrder: preOrder == freezed
          ? _value.preOrder
          : preOrder // ignore: cast_nullable_to_non_nullable
              as bool?,
      productReview: productReview == freezed
          ? _value.productReview
          : productReview // ignore: cast_nullable_to_non_nullable
              as double?,
      isSeller: isSeller == freezed
          ? _value.isSeller
          : isSeller // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPhone: isPhone == freezed
          ? _value.isPhone
          : isPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
      willShowEmi: willShowEmi == freezed
          ? _value.willShowEmi
          : willShowEmi // ignore: cast_nullable_to_non_nullable
              as bool?,
      badge: badge == freezed
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as dynamic,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String?,
      combo: combo == freezed
          ? _value.combo
          : combo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      category: category == freezed
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      relatedProduct: relatedProduct == freezed
          ? _value._relatedProduct
          : relatedProduct // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      filterValue: filterValue == freezed
          ? _value._filterValue
          : filterValue // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {this.id,
      this.brand,
      this.image,
      this.charge,
      final List<ApiImage>? images,
      this.slug,
      this.productName,
      this.model,
      this.commissionType,
      this.amount,
      this.tag,
      this.description,
      this.embaddedVideoLink,
      this.note,
      this.maximumOrder,
      this.stock,
      this.isBackOrder,
      this.specification,
      this.warranty,
      this.preOrder,
      this.productReview,
      this.isSeller,
      this.isPhone,
      this.willShowEmi,
      this.badge,
      this.isActive,
      this.createdAt,
      this.updatedAt,
      this.language,
      this.seller,
      this.combo,
      this.createdBy,
      this.updatedBy,
      final List<int>? category,
      final List<dynamic>? relatedProduct,
      final List<dynamic>? filterValue})
      : _images = images,
        _category = category,
        _relatedProduct = relatedProduct,
        _filterValue = filterValue;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final int? id;
  @override
  final Brand? brand;
  @override
  final String? image;
  @override
  final Charge? charge;
  final List<ApiImage>? _images;
  @override
  List<ApiImage>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? slug;
  @override
  final String? productName;
  @override
  final String? model;
  @override
  final String? commissionType;
  @override
  final String? amount;
  @override
  final String? tag;
  @override
  final String? description;
  @override
  final String? embaddedVideoLink;
  @override
  final String? note;
  @override
  final int? maximumOrder;
  @override
  final int? stock;
  @override
  final bool? isBackOrder;
  @override
  final String? specification;
  @override
  final String? warranty;
  @override
  final bool? preOrder;
  @override
  final double? productReview;
  @override
  final bool? isSeller;
  @override
  final bool? isPhone;
  @override
  final bool? willShowEmi;
  @override
  final dynamic badge;
  @override
  final bool? isActive;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final dynamic language;
  @override
  final String? seller;
  @override
  final dynamic combo;
  @override
  final String? createdBy;
  @override
  final dynamic updatedBy;
  final List<int>? _category;
  @override
  List<int>? get category {
    final value = _category;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _relatedProduct;
  @override
  List<dynamic>? get relatedProduct {
    final value = _relatedProduct;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _filterValue;
  @override
  List<dynamic>? get filterValue {
    final value = _filterValue;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(id: $id, brand: $brand, image: $image, charge: $charge, images: $images, slug: $slug, productName: $productName, model: $model, commissionType: $commissionType, amount: $amount, tag: $tag, description: $description, embaddedVideoLink: $embaddedVideoLink, note: $note, maximumOrder: $maximumOrder, stock: $stock, isBackOrder: $isBackOrder, specification: $specification, warranty: $warranty, preOrder: $preOrder, productReview: $productReview, isSeller: $isSeller, isPhone: $isPhone, willShowEmi: $willShowEmi, badge: $badge, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, language: $language, seller: $seller, combo: $combo, createdBy: $createdBy, updatedBy: $updatedBy, category: $category, relatedProduct: $relatedProduct, filterValue: $filterValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.charge, charge) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality()
                .equals(other.commissionType, commissionType) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.embaddedVideoLink, embaddedVideoLink) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.maximumOrder, maximumOrder) &&
            const DeepCollectionEquality().equals(other.stock, stock) &&
            const DeepCollectionEquality()
                .equals(other.isBackOrder, isBackOrder) &&
            const DeepCollectionEquality()
                .equals(other.specification, specification) &&
            const DeepCollectionEquality().equals(other.warranty, warranty) &&
            const DeepCollectionEquality().equals(other.preOrder, preOrder) &&
            const DeepCollectionEquality()
                .equals(other.productReview, productReview) &&
            const DeepCollectionEquality().equals(other.isSeller, isSeller) &&
            const DeepCollectionEquality().equals(other.isPhone, isPhone) &&
            const DeepCollectionEquality()
                .equals(other.willShowEmi, willShowEmi) &&
            const DeepCollectionEquality().equals(other.badge, badge) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.seller, seller) &&
            const DeepCollectionEquality().equals(other.combo, combo) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality()
                .equals(other._relatedProduct, _relatedProduct) &&
            const DeepCollectionEquality()
                .equals(other._filterValue, _filterValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(brand),
        const DeepCollectionEquality().hash(image),
        const DeepCollectionEquality().hash(charge),
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(slug),
        const DeepCollectionEquality().hash(productName),
        const DeepCollectionEquality().hash(model),
        const DeepCollectionEquality().hash(commissionType),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(tag),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(embaddedVideoLink),
        const DeepCollectionEquality().hash(note),
        const DeepCollectionEquality().hash(maximumOrder),
        const DeepCollectionEquality().hash(stock),
        const DeepCollectionEquality().hash(isBackOrder),
        const DeepCollectionEquality().hash(specification),
        const DeepCollectionEquality().hash(warranty),
        const DeepCollectionEquality().hash(preOrder),
        const DeepCollectionEquality().hash(productReview),
        const DeepCollectionEquality().hash(isSeller),
        const DeepCollectionEquality().hash(isPhone),
        const DeepCollectionEquality().hash(willShowEmi),
        const DeepCollectionEquality().hash(badge),
        const DeepCollectionEquality().hash(isActive),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(language),
        const DeepCollectionEquality().hash(seller),
        const DeepCollectionEquality().hash(combo),
        const DeepCollectionEquality().hash(createdBy),
        const DeepCollectionEquality().hash(updatedBy),
        const DeepCollectionEquality().hash(_category),
        const DeepCollectionEquality().hash(_relatedProduct),
        const DeepCollectionEquality().hash(_filterValue)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(this);
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? id,
      final Brand? brand,
      final String? image,
      final Charge? charge,
      final List<ApiImage>? images,
      final String? slug,
      final String? productName,
      final String? model,
      final String? commissionType,
      final String? amount,
      final String? tag,
      final String? description,
      final String? embaddedVideoLink,
      final String? note,
      final int? maximumOrder,
      final int? stock,
      final bool? isBackOrder,
      final String? specification,
      final String? warranty,
      final bool? preOrder,
      final double? productReview,
      final bool? isSeller,
      final bool? isPhone,
      final bool? willShowEmi,
      final dynamic badge,
      final bool? isActive,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final dynamic language,
      final String? seller,
      final dynamic combo,
      final String? createdBy,
      final dynamic updatedBy,
      final List<int>? category,
      final List<dynamic>? relatedProduct,
      final List<dynamic>? filterValue}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  Brand? get brand => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  Charge? get charge => throw _privateConstructorUsedError;
  @override
  List<ApiImage>? get images => throw _privateConstructorUsedError;
  @override
  String? get slug => throw _privateConstructorUsedError;
  @override
  String? get productName => throw _privateConstructorUsedError;
  @override
  String? get model => throw _privateConstructorUsedError;
  @override
  String? get commissionType => throw _privateConstructorUsedError;
  @override
  String? get amount => throw _privateConstructorUsedError;
  @override
  String? get tag => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get embaddedVideoLink => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  int? get maximumOrder => throw _privateConstructorUsedError;
  @override
  int? get stock => throw _privateConstructorUsedError;
  @override
  bool? get isBackOrder => throw _privateConstructorUsedError;
  @override
  String? get specification => throw _privateConstructorUsedError;
  @override
  String? get warranty => throw _privateConstructorUsedError;
  @override
  bool? get preOrder => throw _privateConstructorUsedError;
  @override
  double? get productReview => throw _privateConstructorUsedError;
  @override
  bool? get isSeller => throw _privateConstructorUsedError;
  @override
  bool? get isPhone => throw _privateConstructorUsedError;
  @override
  bool? get willShowEmi => throw _privateConstructorUsedError;
  @override
  dynamic get badge => throw _privateConstructorUsedError;
  @override
  bool? get isActive => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  dynamic get language => throw _privateConstructorUsedError;
  @override
  String? get seller => throw _privateConstructorUsedError;
  @override
  dynamic get combo => throw _privateConstructorUsedError;
  @override
  String? get createdBy => throw _privateConstructorUsedError;
  @override
  dynamic get updatedBy => throw _privateConstructorUsedError;
  @override
  List<int>? get category => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get relatedProduct => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get filterValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get headerImage => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res>;
  $Res call({String? name, String? image, String? headerImage, String? slug});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res> implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  final Brand _value;
  // ignore: unused_field
  final $Res Function(Brand) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? headerImage = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      headerImage: headerImage == freezed
          ? _value.headerImage
          : headerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BrandCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$_BrandCopyWith(_$_Brand value, $Res Function(_$_Brand) then) =
      __$$_BrandCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? image, String? headerImage, String? slug});
}

/// @nodoc
class __$$_BrandCopyWithImpl<$Res> extends _$BrandCopyWithImpl<$Res>
    implements _$$_BrandCopyWith<$Res> {
  __$$_BrandCopyWithImpl(_$_Brand _value, $Res Function(_$_Brand) _then)
      : super(_value, (v) => _then(v as _$_Brand));

  @override
  _$_Brand get _value => super._value as _$_Brand;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? headerImage = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$_Brand(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      headerImage: headerImage == freezed
          ? _value.headerImage
          : headerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Brand implements _Brand {
  const _$_Brand({this.name, this.image, this.headerImage, this.slug});

  factory _$_Brand.fromJson(Map<String, dynamic> json) =>
      _$$_BrandFromJson(json);

  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? headerImage;
  @override
  final String? slug;

  @override
  String toString() {
    return 'Brand(name: $name, image: $image, headerImage: $headerImage, slug: $slug)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Brand &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.headerImage, headerImage) &&
            const DeepCollectionEquality().equals(other.slug, slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(headerImage),
      const DeepCollectionEquality().hash(slug));

  @JsonKey(ignore: true)
  @override
  _$$_BrandCopyWith<_$_Brand> get copyWith =>
      __$$_BrandCopyWithImpl<_$_Brand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandToJson(this);
  }
}

abstract class _Brand implements Brand {
  const factory _Brand(
      {final String? name,
      final String? image,
      final String? headerImage,
      final String? slug}) = _$_Brand;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$_Brand.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get headerImage => throw _privateConstructorUsedError;
  @override
  String? get slug => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BrandCopyWith<_$_Brand> get copyWith =>
      throw _privateConstructorUsedError;
}

Charge _$ChargeFromJson(Map<String, dynamic> json) {
  return _Charge.fromJson(json);
}

/// @nodoc
mixin _$Charge {
  double? get bookingPrice => throw _privateConstructorUsedError;
  double? get currentCharge => throw _privateConstructorUsedError;
  dynamic get discountCharge => throw _privateConstructorUsedError;
  double? get sellingPrice => throw _privateConstructorUsedError;
  double? get profit => throw _privateConstructorUsedError;
  bool? get isEvent => throw _privateConstructorUsedError;
  dynamic get eventId => throw _privateConstructorUsedError;
  bool? get highlight => throw _privateConstructorUsedError;
  dynamic get highlightId => throw _privateConstructorUsedError;
  bool? get groupping => throw _privateConstructorUsedError;
  dynamic get grouppingId => throw _privateConstructorUsedError;
  dynamic get campaignSectionId => throw _privateConstructorUsedError;
  bool? get campaignSection => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargeCopyWith<Charge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargeCopyWith<$Res> {
  factory $ChargeCopyWith(Charge value, $Res Function(Charge) then) =
      _$ChargeCopyWithImpl<$Res>;
  $Res call(
      {double? bookingPrice,
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
      dynamic message});
}

/// @nodoc
class _$ChargeCopyWithImpl<$Res> implements $ChargeCopyWith<$Res> {
  _$ChargeCopyWithImpl(this._value, this._then);

  final Charge _value;
  // ignore: unused_field
  final $Res Function(Charge) _then;

  @override
  $Res call({
    Object? bookingPrice = freezed,
    Object? currentCharge = freezed,
    Object? discountCharge = freezed,
    Object? sellingPrice = freezed,
    Object? profit = freezed,
    Object? isEvent = freezed,
    Object? eventId = freezed,
    Object? highlight = freezed,
    Object? highlightId = freezed,
    Object? groupping = freezed,
    Object? grouppingId = freezed,
    Object? campaignSectionId = freezed,
    Object? campaignSection = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      bookingPrice: bookingPrice == freezed
          ? _value.bookingPrice
          : bookingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      currentCharge: currentCharge == freezed
          ? _value.currentCharge
          : currentCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      discountCharge: discountCharge == freezed
          ? _value.discountCharge
          : discountCharge // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      profit: profit == freezed
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as double?,
      isEvent: isEvent == freezed
          ? _value.isEvent
          : isEvent // ignore: cast_nullable_to_non_nullable
              as bool?,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      highlight: highlight == freezed
          ? _value.highlight
          : highlight // ignore: cast_nullable_to_non_nullable
              as bool?,
      highlightId: highlightId == freezed
          ? _value.highlightId
          : highlightId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      groupping: groupping == freezed
          ? _value.groupping
          : groupping // ignore: cast_nullable_to_non_nullable
              as bool?,
      grouppingId: grouppingId == freezed
          ? _value.grouppingId
          : grouppingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      campaignSectionId: campaignSectionId == freezed
          ? _value.campaignSectionId
          : campaignSectionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      campaignSection: campaignSection == freezed
          ? _value.campaignSection
          : campaignSection // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_ChargeCopyWith<$Res> implements $ChargeCopyWith<$Res> {
  factory _$$_ChargeCopyWith(_$_Charge value, $Res Function(_$_Charge) then) =
      __$$_ChargeCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? bookingPrice,
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
      dynamic message});
}

/// @nodoc
class __$$_ChargeCopyWithImpl<$Res> extends _$ChargeCopyWithImpl<$Res>
    implements _$$_ChargeCopyWith<$Res> {
  __$$_ChargeCopyWithImpl(_$_Charge _value, $Res Function(_$_Charge) _then)
      : super(_value, (v) => _then(v as _$_Charge));

  @override
  _$_Charge get _value => super._value as _$_Charge;

  @override
  $Res call({
    Object? bookingPrice = freezed,
    Object? currentCharge = freezed,
    Object? discountCharge = freezed,
    Object? sellingPrice = freezed,
    Object? profit = freezed,
    Object? isEvent = freezed,
    Object? eventId = freezed,
    Object? highlight = freezed,
    Object? highlightId = freezed,
    Object? groupping = freezed,
    Object? grouppingId = freezed,
    Object? campaignSectionId = freezed,
    Object? campaignSection = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_Charge(
      bookingPrice: bookingPrice == freezed
          ? _value.bookingPrice
          : bookingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      currentCharge: currentCharge == freezed
          ? _value.currentCharge
          : currentCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      discountCharge: discountCharge == freezed
          ? _value.discountCharge
          : discountCharge // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sellingPrice: sellingPrice == freezed
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      profit: profit == freezed
          ? _value.profit
          : profit // ignore: cast_nullable_to_non_nullable
              as double?,
      isEvent: isEvent == freezed
          ? _value.isEvent
          : isEvent // ignore: cast_nullable_to_non_nullable
              as bool?,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      highlight: highlight == freezed
          ? _value.highlight
          : highlight // ignore: cast_nullable_to_non_nullable
              as bool?,
      highlightId: highlightId == freezed
          ? _value.highlightId
          : highlightId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      groupping: groupping == freezed
          ? _value.groupping
          : groupping // ignore: cast_nullable_to_non_nullable
              as bool?,
      grouppingId: grouppingId == freezed
          ? _value.grouppingId
          : grouppingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      campaignSectionId: campaignSectionId == freezed
          ? _value.campaignSectionId
          : campaignSectionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      campaignSection: campaignSection == freezed
          ? _value.campaignSection
          : campaignSection // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Charge implements _Charge {
  const _$_Charge(
      {this.bookingPrice,
      this.currentCharge,
      this.discountCharge,
      this.sellingPrice,
      this.profit,
      this.isEvent,
      this.eventId,
      this.highlight,
      this.highlightId,
      this.groupping,
      this.grouppingId,
      this.campaignSectionId,
      this.campaignSection,
      this.message});

  factory _$_Charge.fromJson(Map<String, dynamic> json) =>
      _$$_ChargeFromJson(json);

  @override
  final double? bookingPrice;
  @override
  final double? currentCharge;
  @override
  final dynamic discountCharge;
  @override
  final double? sellingPrice;
  @override
  final double? profit;
  @override
  final bool? isEvent;
  @override
  final dynamic eventId;
  @override
  final bool? highlight;
  @override
  final dynamic highlightId;
  @override
  final bool? groupping;
  @override
  final dynamic grouppingId;
  @override
  final dynamic campaignSectionId;
  @override
  final bool? campaignSection;
  @override
  final dynamic message;

  @override
  String toString() {
    return 'Charge(bookingPrice: $bookingPrice, currentCharge: $currentCharge, discountCharge: $discountCharge, sellingPrice: $sellingPrice, profit: $profit, isEvent: $isEvent, eventId: $eventId, highlight: $highlight, highlightId: $highlightId, groupping: $groupping, grouppingId: $grouppingId, campaignSectionId: $campaignSectionId, campaignSection: $campaignSection, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Charge &&
            const DeepCollectionEquality()
                .equals(other.bookingPrice, bookingPrice) &&
            const DeepCollectionEquality()
                .equals(other.currentCharge, currentCharge) &&
            const DeepCollectionEquality()
                .equals(other.discountCharge, discountCharge) &&
            const DeepCollectionEquality()
                .equals(other.sellingPrice, sellingPrice) &&
            const DeepCollectionEquality().equals(other.profit, profit) &&
            const DeepCollectionEquality().equals(other.isEvent, isEvent) &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality().equals(other.highlight, highlight) &&
            const DeepCollectionEquality()
                .equals(other.highlightId, highlightId) &&
            const DeepCollectionEquality().equals(other.groupping, groupping) &&
            const DeepCollectionEquality()
                .equals(other.grouppingId, grouppingId) &&
            const DeepCollectionEquality()
                .equals(other.campaignSectionId, campaignSectionId) &&
            const DeepCollectionEquality()
                .equals(other.campaignSection, campaignSection) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bookingPrice),
      const DeepCollectionEquality().hash(currentCharge),
      const DeepCollectionEquality().hash(discountCharge),
      const DeepCollectionEquality().hash(sellingPrice),
      const DeepCollectionEquality().hash(profit),
      const DeepCollectionEquality().hash(isEvent),
      const DeepCollectionEquality().hash(eventId),
      const DeepCollectionEquality().hash(highlight),
      const DeepCollectionEquality().hash(highlightId),
      const DeepCollectionEquality().hash(groupping),
      const DeepCollectionEquality().hash(grouppingId),
      const DeepCollectionEquality().hash(campaignSectionId),
      const DeepCollectionEquality().hash(campaignSection),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ChargeCopyWith<_$_Charge> get copyWith =>
      __$$_ChargeCopyWithImpl<_$_Charge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChargeToJson(this);
  }
}

abstract class _Charge implements Charge {
  const factory _Charge(
      {final double? bookingPrice,
      final double? currentCharge,
      final dynamic discountCharge,
      final double? sellingPrice,
      final double? profit,
      final bool? isEvent,
      final dynamic eventId,
      final bool? highlight,
      final dynamic highlightId,
      final bool? groupping,
      final dynamic grouppingId,
      final dynamic campaignSectionId,
      final bool? campaignSection,
      final dynamic message}) = _$_Charge;

  factory _Charge.fromJson(Map<String, dynamic> json) = _$_Charge.fromJson;

  @override
  double? get bookingPrice => throw _privateConstructorUsedError;
  @override
  double? get currentCharge => throw _privateConstructorUsedError;
  @override
  dynamic get discountCharge => throw _privateConstructorUsedError;
  @override
  double? get sellingPrice => throw _privateConstructorUsedError;
  @override
  double? get profit => throw _privateConstructorUsedError;
  @override
  bool? get isEvent => throw _privateConstructorUsedError;
  @override
  dynamic get eventId => throw _privateConstructorUsedError;
  @override
  bool? get highlight => throw _privateConstructorUsedError;
  @override
  dynamic get highlightId => throw _privateConstructorUsedError;
  @override
  bool? get groupping => throw _privateConstructorUsedError;
  @override
  dynamic get grouppingId => throw _privateConstructorUsedError;
  @override
  dynamic get campaignSectionId => throw _privateConstructorUsedError;
  @override
  bool? get campaignSection => throw _privateConstructorUsedError;
  @override
  dynamic get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChargeCopyWith<_$_Charge> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiImage _$ApiImageFromJson(Map<String, dynamic> json) {
  return _ApiImage.fromJson(json);
}

/// @nodoc
mixin _$ApiImage {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool? get isPrimary => throw _privateConstructorUsedError;
  int? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiImageCopyWith<ApiImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiImageCopyWith<$Res> {
  factory $ApiImageCopyWith(ApiImage value, $Res Function(ApiImage) then) =
      _$ApiImageCopyWithImpl<$Res>;
  $Res call({int? id, String? image, bool? isPrimary, int? product});
}

/// @nodoc
class _$ApiImageCopyWithImpl<$Res> implements $ApiImageCopyWith<$Res> {
  _$ApiImageCopyWithImpl(this._value, this._then);

  final ApiImage _value;
  // ignore: unused_field
  final $Res Function(ApiImage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? isPrimary = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: isPrimary == freezed
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ApiImageCopyWith<$Res> implements $ApiImageCopyWith<$Res> {
  factory _$$_ApiImageCopyWith(
          _$_ApiImage value, $Res Function(_$_ApiImage) then) =
      __$$_ApiImageCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? image, bool? isPrimary, int? product});
}

/// @nodoc
class __$$_ApiImageCopyWithImpl<$Res> extends _$ApiImageCopyWithImpl<$Res>
    implements _$$_ApiImageCopyWith<$Res> {
  __$$_ApiImageCopyWithImpl(
      _$_ApiImage _value, $Res Function(_$_ApiImage) _then)
      : super(_value, (v) => _then(v as _$_ApiImage));

  @override
  _$_ApiImage get _value => super._value as _$_ApiImage;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? isPrimary = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_ApiImage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrimary: isPrimary == freezed
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiImage implements _ApiImage {
  const _$_ApiImage({this.id, this.image, this.isPrimary, this.product});

  factory _$_ApiImage.fromJson(Map<String, dynamic> json) =>
      _$$_ApiImageFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final bool? isPrimary;
  @override
  final int? product;

  @override
  String toString() {
    return 'ApiImage(id: $id, image: $image, isPrimary: $isPrimary, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiImage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.isPrimary, isPrimary) &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isPrimary),
      const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_ApiImageCopyWith<_$_ApiImage> get copyWith =>
      __$$_ApiImageCopyWithImpl<_$_ApiImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiImageToJson(this);
  }
}

abstract class _ApiImage implements ApiImage {
  const factory _ApiImage(
      {final int? id,
      final String? image,
      final bool? isPrimary,
      final int? product}) = _$_ApiImage;

  factory _ApiImage.fromJson(Map<String, dynamic> json) = _$_ApiImage.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  bool? get isPrimary => throw _privateConstructorUsedError;
  @override
  int? get product => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ApiImageCopyWith<_$_ApiImage> get copyWith =>
      throw _privateConstructorUsedError;
}
