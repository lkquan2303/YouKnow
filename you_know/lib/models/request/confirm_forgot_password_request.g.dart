// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_forgot_password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmForgotPasswordRequest _$ConfirmForgotPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    ConfirmForgotPasswordRequest(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$ConfirmForgotPasswordRequestToJson(
        ConfirmForgotPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
