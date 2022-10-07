// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'razorpay_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RazorPayModel _$RazorPayModelFromJson(Map<String, dynamic> json) =>
    RazorPayModel(
      paymentLinks: (json['payment_links'] as List<dynamic>?)
          ?.map((e) => RazorData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RazorPayModelToJson(RazorPayModel instance) =>
    <String, dynamic>{
      'payment_links': instance.paymentLinks,
    };

RazorData _$RazorDataFromJson(Map<String, dynamic> json) => RazorData(
      acceptPartial: json['accept_partial'] as bool?,
      amount: json['amount'] as int?,
      createdAt: json['created_at'] as int?,
      currency: json['currency'] as String?,
      customer: json['customer'] == null
          ? null
          : CustomerData.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RazorDataToJson(RazorData instance) => <String, dynamic>{
      'accept_partial': instance.acceptPartial,
      'amount': instance.amount,
      'created_at': instance.createdAt,
      'currency': instance.currency,
      'customer': instance.customer,
    };

CustomerDataRequest _$CustomerDataRequestFromJson(Map<String, dynamic> json) =>
    CustomerDataRequest(
      amount: json['amount'] as int?,
      currency: json['currency'] as String?,
      description: json['description'] as String?,
      callback_method: json['callback_method'] as String?,
      notify: json['notify'] == null
          ? null
          : Notify.fromJson(json['notify'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : CustomerData.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerDataRequestToJson(
        CustomerDataRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'description': instance.description,
      'callback_method': instance.callback_method,
      'notify': instance.notify,
      'customer': instance.customer,
    };

Notify _$NotifyFromJson(Map<String, dynamic> json) => Notify(
      email: json['email'] as bool?,
      sms: json['sms'] as bool?,
    );

Map<String, dynamic> _$NotifyToJson(Notify instance) => <String, dynamic>{
      'email': instance.email,
      'sms': instance.sms,
    };

CustomerData _$CustomerDataFromJson(Map<String, dynamic> json) => CustomerData(
      contact: json['contact'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CustomerDataToJson(CustomerData instance) =>
    <String, dynamic>{
      'contact': instance.contact,
      'email': instance.email,
      'name': instance.name,
    };

CustomerDataResponse _$CustomerDataResponseFromJson(
        Map<String, dynamic> json) =>
    CustomerDataResponse(
      contact: json['accept_partial'] as bool?,
      amount: json['amount'] as int?,
      created_at: json['created_at'] as int?,
      currency: json['currency'] as String?,
      customer: json['customer'] == null
          ? null
          : CustomerData.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerDataResponseToJson(
        CustomerDataResponse instance) =>
    <String, dynamic>{
      'accept_partial': instance.contact,
      'amount': instance.amount,
      'created_at': instance.created_at,
      'currency': instance.currency,
      'customer': instance.customer,
    };
