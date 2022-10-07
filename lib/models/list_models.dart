import 'package:json_annotation/json_annotation.dart';
part 'list_models.g.dart';

@JsonSerializable()
class SelectPlanResponse {
  @JsonKey(name: "success")
  bool? success;
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "class_booked")
  int? classBooked;
  @JsonKey(name: "current_plan_booked")
  int? currentPlanBooked;
  @JsonKey(name: "total_booked")
  int? totalBooked;
  @JsonKey(name: "data")
  List<StripeProductList>? data;
  SelectPlanResponse(
      {this.classBooked,
        this.success,
        this.message,
        this.data,
        this.totalBooked,
        this.currentPlanBooked});
  factory SelectPlanResponse.fromJson(Map<String, dynamic> json) =>
      _$SelectPlanResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SelectPlanResponseToJson(this);
}

@JsonSerializable()
class StripeProductList {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "object")
  String? object;
  @JsonKey(name: "active")
  bool? active;
  @JsonKey(name: "created")
  int? created;
  @JsonKey(name: "product_price")
  int? amount;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "livemode")
  bool? livemode;
  @JsonKey(name: "package_dimensions")
  String? packageDimensions;
  @JsonKey(name: "shippable")
  String? shippable;
  @JsonKey(name: "statement_descriptor")
  String? statementDescriptor;
  @JsonKey(name: "tax_code")
  String? taxCode;
  @JsonKey(name: "unit_label")
  String? unitLabel;
  @JsonKey(name: "updated")
  int? updated;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "product_type")
  String? type;
  @JsonKey(name: "price_id")
  String? priceId;
  @JsonKey(name: "current_package")
  bool? currentPackage;
  StripeProductList(
      this.id,
      this.object,
      this.active,
      this.type,
      this.created,
      this.amount,
      this.description,
      this.livemode,
      this.packageDimensions,
      this.shippable,
      this.statementDescriptor,
      this.taxCode,
      this.unitLabel,
      this.updated,
      this.priceId,
      this.currentPackage,
      this.url,
      );
  factory StripeProductList.fromJson(Map<String, dynamic> json) =>
      _$StripeProductListFromJson(json);
  Map<String, dynamic> toJson() => _$StripeProductListToJson(this);
}