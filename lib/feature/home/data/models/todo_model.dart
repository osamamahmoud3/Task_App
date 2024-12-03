import 'package:json_annotation/json_annotation.dart';
import 'package:task/feature/home/domin/entities/todo_entity.dart';
part 'todo_model.g.dart';

@JsonSerializable()
class ToDoModel {
  @JsonKey(name: '_id')
  String? sId;
  String? image;
  String? title;
  String? desc;
  String? priority;
  String? status;
  String? user;
  String? createdAt;
  String? updatedAt;
  @JsonKey(name: '__v')
  int? iV;

  ToDoModel(
      {this.sId,
      this.image,
      this.title,
      this.desc,
      this.priority,
      this.status,
      this.user,
      this.createdAt,
      this.updatedAt,
      this.iV});

  factory ToDoModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoModelFromJson(json);

  TodoEntity toEntity() => TodoEntity(
        image: image ?? '',
        title: title ?? '',
        id: sId ?? '',
        desc: desc ?? '',
        priority: priority ?? '',
        status: status ?? '',
        user: user ?? '',
        createdAt: createdAt ?? '',
        updatedAt: updatedAt ?? '',
      );
}
