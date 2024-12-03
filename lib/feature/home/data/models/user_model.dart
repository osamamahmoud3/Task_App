import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/feature/home/domin/entities/todo_entity.dart';
import 'package:task/feature/home/domin/entities/user_entity.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: '_id')
  String? sId;
  String? displayName;
  String? username;
  List<String>? roles;
  bool? active;
  int? experienceYears;
  String? address;
  String? level;
  String? createdAt;
  String? updatedAt;
  @JsonKey(name: '__v')
  int? iV;

  UserModel(
      {this.sId,
      this.displayName,
      this.username,
      this.roles,
      this.active,
      this.experienceYears,
      this.address,
      this.level,
      this.createdAt,
      this.updatedAt,
      this.iV});
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  UserEntity todoEntity() => UserEntity(
      name: displayName ?? '',
      phoneNumber: username ?? '',
      level: level ?? '',
      yearsOfExperience: experienceYears ?? 0,
      location: address ?? '');
}
