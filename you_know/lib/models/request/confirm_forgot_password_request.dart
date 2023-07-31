import 'package:json_annotation/json_annotation.dart';

part 'confirm_forgot_password_request.g.dart';

@JsonSerializable()
class ConfirmForgotPasswordRequest {
  ConfirmForgotPasswordRequest({
    required this.email,
    required this.password,
  });

  String email;
  String password;

  factory ConfirmForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmForgotPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmForgotPasswordRequestToJson(this);
}
