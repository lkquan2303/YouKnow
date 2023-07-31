import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_request.g.dart';

@JsonSerializable()
class VerifyOTPRequest {
  VerifyOTPRequest({
    required this.email,
    required this.userName,
    required this.password,
    required this.otpCode,
  });

  // "userName": "string",
  // "email": "user@example.com",
  // "password": "string",
  // "otpCode": 0

  String email;
  String userName;
  String password;
  int otpCode;

  factory VerifyOTPRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOTPRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOTPRequestToJson(this);
}
