// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_task_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

addToDoRequestBody _$addToDoRequestBodyFromJson(Map<String, dynamic> json) =>
    addToDoRequestBody(
      image: json['image'] as String?,
      title: json['title'] as String,
      desc: json['desc'] as String,
      priority: json['priority'] as String,
      date: json['dueDate'] as String,
    );

Map<String, dynamic> _$addToDoRequestBodyToJson(addToDoRequestBody instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'desc': instance.desc,
      'priority': instance.priority,
      'dueDate': instance.date,
    };
