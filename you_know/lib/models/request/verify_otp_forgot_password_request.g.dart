// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_forgot_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOTPForgotPasswordRequest _$VerifyOTPForgotPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    VerifyOTPForgotPasswordRequest(
      email: json['email'] as String,
      otp: json['otp'] as int,
    );

Map<String, dynamic> _$VerifyOTPForgotPasswordRequestToJson(
        VerifyOTPForgotPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
    };
