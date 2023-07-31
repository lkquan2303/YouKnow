import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/constants/common.dart';
import '../../../../shared/utils/regex.dart';
import '../../../../shared/widgets/input_field.dart';
import '../../../auth/auth_controller.dart';

class ConfirmPasswordForm extends GetView<AuthController> {
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _confirmPassFovus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.confirmPasswordFormKey,
      child: Column(
        children: [
          InputField(
            controller: controller.passwordController,
            hintText: CommonConstants.newPassWord.tr,
            icon: Icons.lock,
            obscureText: true,
            focusNode: _passwordFocus,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return CommonConstants.passwordIsRequired.tr;
              }
              if (!Regex.isPassword(value)) {
                return CommonConstants.textErrorPass.tr;
              }
              return null;
            },
          ),
          SizedBox(height: CommonConstants.defaultPadding),
          InputField(
            controller: controller.confirmPasswordController,
            hintText: CommonConstants.confirmPassWord.tr,
            icon: Icons.lock,
            obscureText: true,
            focusNode: _confirmPassFovus,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return CommonConstants.confirmPasswordIsRequired.tr;
              }
              if (value != controller.passwordController.text) {
                return CommonConstants.passwordsDoNotMatch.tr;
              }
              return null;
            },
          ),
          SizedBox(height: CommonConstants.defaultPadding / 0.4),
          SizedBox(
            width: double.infinity,
            child: Hero(
              tag: "login_btn",
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: CommonConstants.kPrimaryColor,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                ),
                child: Text(
                  CommonConstants.submit.tr.toUpperCase(),
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ),
          SizedBox(height: CommonConstants.defaultPadding),
        ],
      ),
    );
  }
}
