// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      name: json['displayName'] as String,
      phoneNumber: json['phone'] as String,
      yearsOfExperience: (json['experienceYears'] as num).toInt(),
      experienceLevel: json['level'] as String,
      address: json['address'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'displayName': instance.name,
      'phone': instance.phoneNumber,
      'experienceYears': instance.yearsOfExperience,
      'level': instance.experienceLevel,
      'address': instance.address,
      'password': instance.password,
    };
