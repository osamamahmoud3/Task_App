import 'package:json_annotation/json_annotation.dart';
part 'add_task_request_body.g.dart';

@JsonSerializable()
class addToDoRequestBody {
   String ?image;
  final String title;
  final String desc;
  final String priority;
  @JsonKey(name: 'dueDate')
  final String date;

  addToDoRequestBody(
      { this.image,
      required this.title,
      required this.desc,
      required this.priority,
      required this.date});

  Map<String, dynamic> toJson() => _$addToDoRequestBodyToJson(this);
}
