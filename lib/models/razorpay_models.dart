import 'package:json_annotation/json_annotation.dart';

part 'razorpay_models.g.dart';

@JsonSerializable()
class RazorPayModel {
  @JsonKey(name: 'payment_links')
  List<RazorData>? paymentLinks;

  RazorPayModel({this.paymentLinks});

  factory RazorPayModel.fromJson(Map<String, dynamic> json) =>
      _$RazorPayModelFromJson(json);

  Map<String, dynamic> toJson() => _$RazorPayModelToJson(this);
}

@JsonSerializable()
class RazorData {
  @JsonKey(name: 'accept_partial')
  bool? acceptPartial;
  @JsonKey(name: 'amount')
  int? amount;
  @JsonKey(name: 'created_at')
  int? createdAt;
  @JsonKey(name: 'currency')
  String? currency;
  @JsonKey(name: 'customer')
  CustomerData? customer;

  RazorData(
      {this.acceptPartial,
      this.amount,
      this.createdAt,
      this.currency,
      this.customer});

  factory RazorData.fromJson(Map<String, dynamic> json) =>
      _$RazorDataFromJson(json);

  Map<String, dynamic> toJson() => _$RazorDataToJson(this);
}



@JsonSerializable()
class CustomerDataRequest {
  @JsonKey(name: 'amount')
  int? amount;
  @JsonKey(name: 'currency')
  String? currency;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'callback_method')
  String? callback_method;
  @JsonKey(name: 'notify')
  Notify? notify;
  @JsonKey(name: 'customer')
  CustomerData? customer;


  CustomerDataRequest(
      {this.amount,
      this.currency,
      this.description,
      this.callback_method,
      this.notify,
      this.customer});

  factory CustomerDataRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDataRequestToJson(this);
}

@JsonSerializable()
class Notify {
  @JsonKey(name: 'email')
  bool? email;
  @JsonKey(name: 'sms')
  bool? sms;


  Notify({this.email, this.sms});

  factory Notify.fromJson(Map<String, dynamic> json) =>
      _$NotifyFromJson(json);

  Map<String, dynamic> toJson() => _$NotifyToJson(this);
}

@JsonSerializable()
class CustomerData {
  @JsonKey(name: 'contact')
  String? contact;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'name')
  String? name;

  CustomerData({this.contact, this.email, this.name});

  factory CustomerData.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDataToJson(this);
}


@JsonSerializable()
class CustomerDataResponse {
  @JsonKey(name: 'accept_partial')
  bool? contact;
  @JsonKey(name: 'amount')
  int? amount;
  @JsonKey(name: 'created_at')
  int? created_at;
  @JsonKey(name: 'currency')
  String? currency;
  @JsonKey(name: 'customer')
  CustomerData? customer;


  CustomerDataResponse(
      {this.contact, this.amount, this.created_at, this.currency, this.customer});

  factory CustomerDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDataResponseToJson(this);
}
