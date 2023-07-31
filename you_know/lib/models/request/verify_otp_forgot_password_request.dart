import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_forgot_password_request.g.dart';

@JsonSerializable()
class VerifyOTPForgotPasswordRequest {
  VerifyOTPForgotPasswordRequest({
    required this.email,
    required this.otp,
  });

  // "userName": "string",
  // "email": "user@example.com",
  // "password": "string",
  // "otpCode": 0

  String email;
  int otp;

  factory VerifyOTPForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOTPForgotPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOTPForgotPasswordRequestToJson(this);
}
