import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  @JsonKey(name: "displayName")
  final String name;

  @JsonKey(name: "phone")
  final String phoneNumber;

  @JsonKey(name: "experienceYears")
  final int yearsOfExperience;

  @JsonKey(name: "level")
  final String experienceLevel;
  final String address;
  final String password;

  SignupRequestBody(
      {required this.name,
      required this.phoneNumber,
      required this.yearsOfExperience,
      required this.experienceLevel,
      required this.address,
      required this.password});

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
