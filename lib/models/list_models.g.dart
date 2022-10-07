// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectPlanResponse _$SelectPlanResponseFromJson(Map<String, dynamic> json) =>
    SelectPlanResponse(
      classBooked: json['class_booked'] as int?,
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StripeProductList.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalBooked: json['total_booked'] as int?,
      currentPlanBooked: json['current_plan_booked'] as int?,
    );

Map<String, dynamic> _$SelectPlanResponseToJson(SelectPlanResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'class_booked': instance.classBooked,
      'current_plan_booked': instance.currentPlanBooked,
      'total_booked': instance.totalBooked,
      'data': instance.data,
    };

StripeProductList _$StripeProductListFromJson(Map<String, dynamic> json) =>
    StripeProductList(
      json['id'] as String?,
      json['object'] as String?,
      json['active'] as bool?,
      json['product_type'] as String?,
      json['created'] as int?,
      json['product_price'] as int?,
      json['description'] as String?,
      json['livemode'] as bool?,
      json['package_dimensions'] as String?,
      json['shippable'] as String?,
      json['statement_descriptor'] as String?,
      json['tax_code'] as String?,
      json['unit_label'] as String?,
      json['updated'] as int?,
      json['price_id'] as String?,
      json['current_package'] as bool?,
      json['url'] as String?,
    );

Map<String, dynamic> _$StripeProductListToJson(StripeProductList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'active': instance.active,
      'created': instance.created,
      'product_price': instance.amount,
      'description': instance.description,
      'livemode': instance.livemode,
      'package_dimensions': instance.packageDimensions,
      'shippable': instance.shippable,
      'statement_descriptor': instance.statementDescriptor,
      'tax_code': instance.taxCode,
      'unit_label': instance.unitLabel,
      'updated': instance.updated,
      'url': instance.url,
      'product_type': instance.type,
      'price_id': instance.priceId,
      'current_package': instance.currentPackage,
    };
