// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToDoModel _$ToDoModelFromJson(Map<String, dynamic> json) => ToDoModel(
      sId: json['_id'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      priority: json['priority'] as String?,
      status: json['status'] as String?,
      user: json['user'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ToDoModelToJson(ToDoModel instance) => <String, dynamic>{
      '_id': instance.sId,
      'image': instance.image,
      'title': instance.title,
      'desc': instance.desc,
      'priority': instance.priority,
      'status': instance.status,
      'user': instance.user,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.iV,
    };
