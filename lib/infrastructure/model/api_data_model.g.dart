// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiData _$$_ApiDataFromJson(Map<String, dynamic> json) => _$_ApiData(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApiDataToJson(_$_ApiData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      categories: json['categories'] as List<dynamic>?,
      products: json['products'] == null
          ? null
          : Products.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'categories': instance.categories,
      'products': instance.products,
    };

_$_Products _$$_ProductsFromJson(Map<String, dynamic> json) => _$_Products(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductsToJson(_$_Products instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      image: json['image'] as String?,
      charge: json['charge'] == null
          ? null
          : Charge.fromJson(json['charge'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ApiImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      slug: json['slug'] as String?,
      productName: json['product_name'] as String?,
      model: json['model'] as String?,
      commissionType: json['commission_type'] as String?,
      amount: json['amount'] as String?,
      tag: json['tag'] as String?,
      description: json['description'] as String?,
      embaddedVideoLink: json['embadded_video_link'] as String?,
      note: json['note'] as String?,
      maximumOrder: json['maximum_order'] as int?,
      stock: json['stock'] as int?,
      isBackOrder: json['is_back_order'] as bool?,
      specification: json['specification'] as String?,
      warranty: json['warranty'] as String?,
      preOrder: json['pre_order'] as bool?,
      productReview: (json['product_review'] as num?)?.toDouble(),
      isSeller: json['is_seller'] as bool?,
      isPhone: json['is_phone'] as bool?,
      willShowEmi: json['will_show_emi'] as bool?,
      badge: json['badge'],
      isActive: json['is_active'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      language: json['language'],
      seller: json['seller'] as String?,
      combo: json['combo'],
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'],
      category:
          (json['category'] as List<dynamic>?)?.map((e) => e as int).toList(),
      relatedProduct: json['related_product'] as List<dynamic>?,
      filterValue: json['filter_value'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'image': instance.image,
      'charge': instance.charge,
      'images': instance.images,
      'slug': instance.slug,
      'product_name': instance.productName,
      'model': instance.model,
      'commission_type': instance.commissionType,
      'amount': instance.amount,
      'tag': instance.tag,
      'description': instance.description,
      'embadded_video_link': instance.embaddedVideoLink,
      'note': instance.note,
      'maximum_order': instance.maximumOrder,
      'stock': instance.stock,
      'is_back_order': instance.isBackOrder,
      'specification': instance.specification,
      'warranty': instance.warranty,
      'pre_order': instance.preOrder,
      'product_review': instance.productReview,
      'is_seller': instance.isSeller,
      'is_phone': instance.isPhone,
      'will_show_emi': instance.willShowEmi,
      'badge': instance.badge,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'language': instance.language,
      'seller': instance.seller,
      'combo': instance.combo,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'category': instance.category,
      'related_product': instance.relatedProduct,
      'filter_value': instance.filterValue,
    };

_$_Brand _$$_BrandFromJson(Map<String, dynamic> json) => _$_Brand(
      name: json['name'] as String?,
      image: json['image'] as String?,
      headerImage: json['header_image'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$_BrandToJson(_$_Brand instance) => <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'header_image': instance.headerImage,
      'slug': instance.slug,
    };

_$_Charge _$$_ChargeFromJson(Map<String, dynamic> json) => _$_Charge(
      bookingPrice: (json['booking_price'] as num?)?.toDouble(),
      currentCharge: (json['current_charge'] as num?)?.toDouble(),
      discountCharge: json['discount_charge'],
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      profit: (json['profit'] as num?)?.toDouble(),
      isEvent: json['is_event'] as bool?,
      eventId: json['event_id'],
      highlight: json['highlight'] as bool?,
      highlightId: json['highlight_id'],
      groupping: json['groupping'] as bool?,
      grouppingId: json['groupping_id'],
      campaignSectionId: json['campaign_section_id'],
      campaignSection: json['campaign_section'] as bool?,
      message: json['message'],
    );

Map<String, dynamic> _$$_ChargeToJson(_$_Charge instance) => <String, dynamic>{
      'booking_price': instance.bookingPrice,
      'current_charge': instance.currentCharge,
      'discount_charge': instance.discountCharge,
      'selling_price': instance.sellingPrice,
      'profit': instance.profit,
      'is_event': instance.isEvent,
      'event_id': instance.eventId,
      'highlight': instance.highlight,
      'highlight_id': instance.highlightId,
      'groupping': instance.groupping,
      'groupping_id': instance.grouppingId,
      'campaign_section_id': instance.campaignSectionId,
      'campaign_section': instance.campaignSection,
      'message': instance.message,
    };

_$_ApiImage _$$_ApiImageFromJson(Map<String, dynamic> json) => _$_ApiImage(
      id: json['id'] as int?,
      image: json['image'] as String?,
      isPrimary: json['is_primary'] as bool?,
      product: json['product'] as int?,
    );

Map<String, dynamic> _$$_ApiImageToJson(_$_ApiImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'is_primary': instance.isPrimary,
      'product': instance.product,
    };
