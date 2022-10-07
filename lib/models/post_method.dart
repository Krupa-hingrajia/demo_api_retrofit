import 'package:json_annotation/json_annotation.dart';

part 'post_method.g.dart';

@JsonSerializable()
class ClassesOfDate {
  @JsonKey(name: 'date')
  String? date;
  @JsonKey(name: 'page')
  String? page;

  ClassesOfDate({this.date, this.page});

  factory ClassesOfDate.fromJson(Map<String, dynamic> json) =>
      _$ClassesOfDateFromJson(json);

  Map<String, dynamic> toJson() => _$ClassesOfDateToJson(this);
}

@JsonSerializable()
class ClassesOfDateResponse {
  @JsonKey(name: 'success')
  bool? success;
  @JsonKey(name: 'data')
  List<ClassesOfDateList>? data;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'next_page')
  int? nextPage;

  ClassesOfDateResponse({this.success, this.data, this.message, this.nextPage});

  factory ClassesOfDateResponse.fromJson(Map<String, dynamic> json) =>
      _$ClassesOfDateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClassesOfDateResponseToJson(this);
}

@JsonSerializable()
class ClassesOfDateList {
  @JsonKey(name: 'class_uuid')
  String? classUuid;
  @JsonKey(name: 'time_period')
  String? timePeriod;
  @JsonKey(name: 'category_name')
  String? categoryName;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'about')
  String? about;

  ClassesOfDateList(
      {this.classUuid,
      this.timePeriod,
      this.categoryName,
      this.image,
      this.name,
      this.about});

  factory ClassesOfDateList.fromJson(Map<String, dynamic> json) =>
      _$ClassesOfDateListFromJson(json);

  Map<String, dynamic> toJson() => _$ClassesOfDateListToJson(this);
}
