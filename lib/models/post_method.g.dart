// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassesOfDate _$ClassesOfDateFromJson(Map<String, dynamic> json) =>
    ClassesOfDate(
      date: json['date'] as String?,
      page: json['page'] as String?,
    );

Map<String, dynamic> _$ClassesOfDateToJson(ClassesOfDate instance) =>
    <String, dynamic>{
      'date': instance.date,
      'page': instance.page,
    };

ClassesOfDateResponse _$ClassesOfDateResponseFromJson(
        Map<String, dynamic> json) =>
    ClassesOfDateResponse(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ClassesOfDateList.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      nextPage: json['next_page'] as int?,
    );

Map<String, dynamic> _$ClassesOfDateResponseToJson(
        ClassesOfDateResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
      'next_page': instance.nextPage,
    };

ClassesOfDateList _$ClassesOfDateListFromJson(Map<String, dynamic> json) =>
    ClassesOfDateList(
      classUuid: json['class_uuid'] as String?,
      timePeriod: json['time_period'] as String?,
      categoryName: json['category_name'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      about: json['about'] as String?,
    );

Map<String, dynamic> _$ClassesOfDateListToJson(ClassesOfDateList instance) =>
    <String, dynamic>{
      'class_uuid': instance.classUuid,
      'time_period': instance.timePeriod,
      'category_name': instance.categoryName,
      'image': instance.image,
      'name': instance.name,
      'about': instance.about,
    };
