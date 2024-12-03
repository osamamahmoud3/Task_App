import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_response_body.g.dart';
@JsonSerializable()
class SignUpResponseBody {
  String? sId;
  String? displayName;
  String? accessToken;
  String? refreshToken;

  SignUpResponseBody(
      {this.sId, this.displayName, this.accessToken, this.refreshToken});

  factory SignUpResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseBodyFromJson(json);
      




}
