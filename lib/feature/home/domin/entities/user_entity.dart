import 'dart:typed_data';

class UserEntity {
  final String name;
  final String phoneNumber;
  final String level;
  final int yearsOfExperience;
  final String location;

  UserEntity(
      {required this.name,
      required this.phoneNumber,
      required this.level,
      required this.yearsOfExperience,
      required this.location});
}
