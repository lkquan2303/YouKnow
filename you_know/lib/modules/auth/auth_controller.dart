import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';

import '../../api/api_repository.dart';
import '../../routes/app_pages.dart';
import '../../shared/utils/focus.dart';
import '../../shared/widgets/show_dialog_loading.dart';

class AuthController extends GetxController {
  final ApiRepository apiRepository;
  AuthController({required this.apiRepository});

//Sign up
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final registerUsernameController = TextEditingController();
  final registerEmailAddressController = TextEditingController();
  final registerPasswordController = TextEditingController();
  final registerConfirmPasswordController = TextEditingController();
  // final registerUsernameController = TextEditingController();

  bool registerTermsChecked = false;

//Sign in
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final loginUserNameController = TextEditingController();
  final loginPasswordController = TextEditingController();

  //Confirm password
  final GlobalKey<FormState> confirmPasswordFormKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //Verify otp password
  // final otpFieldOne = TextEditingController();
  // final otpFieldTwo = TextEditingController();
  // final otpFieldThree = TextEditingController();
  // final otpFieldFour = TextEditingController();

  //Forgot Password
  final GlobalKey<FormState> forgotPasswordFormKey = GlobalKey<FormState>();
  final forgotEmailController = TextEditingController();

  final otpFieldOne = TextEditingController();
  final otpFieldTwo = TextEditingController();
  final otpFieldThree = TextEditingController();
  final otpFieldFour = TextEditingController();

  // RxString _accessToken = ''.obs;

  // Facebook login response
  RxMap<String, dynamic>? facebookUserData;
  AccessToken? _accessToken;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    registerUsernameController.dispose();
    registerPasswordController.dispose();
    registerConfirmPasswordController.dispose();
    registerUsernameController.dispose();

    loginUserNameController.dispose();
    loginPasswordController.dispose();

    otpFieldOne.dispose();
    otpFieldTwo.dispose();
    otpFieldThree.dispose();
    otpFieldFour.dispose();

    super.dispose();
  }

  RxString otp = ''.obs;

  void setOtp(String value) {
    otp.value = value;
  }

  void login(BuildContext context) async {
    AppFocus.unfocus(context);
    if (loginFormKey.currentState!.validate()) {
      unawaited(showdialog(context));

      Timer.periodic(Duration(seconds: 2), (timer) {
        Navigator.pop(context);
        Get.toNamed(Routes.HOME);
      });
    }
  }

  Future<void> register(BuildContext context) async {
    AppFocus.unfocus(context);
    if (registerFormKey.currentState!.validate()) {}
  }

  String validateOtp() {
    if (otp.value.isEmpty || otp.value.length < 4) {
      Get.toNamed(Routes.CONFIRM_PASSWORD);
    }
    return '';
  }

  bool isOtpValid() {
    return otp.value.length == 4;
  }

  // Add this function

  void _printCredentials() {
    print(
      prettyPrint(_accessToken!.toJson()),
    );
  }

  String prettyPrint(Map json) {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    String pretty = encoder.convert(json);
    return pretty;
  }
}
