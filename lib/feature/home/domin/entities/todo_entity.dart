class TodoEntity {
  String image;
  String title;
  String desc;
  String priority;
  String status;
  String id;
  String user;
  String createdAt;
  String updatedAt;

  TodoEntity({
    required this.image,
    required this.title,
    required this.id,
    required this.desc,
    required this.priority,
    required this.status,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
  });
}
