import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/constants/common.dart';
import '../../../shared/utils/regex.dart';
import '../../../shared/widgets/input_field.dart';
import '../../auth/auth_controller.dart';

class ForgotPasswordForm extends GetView<AuthController> {
  final FocusNode _emailFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.forgotPasswordFormKey,
      child: Column(
        children: [
          InputField(
            controller: controller.forgotEmailController,
            hintText: CommonConstants.yourMail.tr,
            icon: Icons.person,
            focusNode: _emailFocus,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return CommonConstants.emailAddressIsRequired.tr;
              }
              if (!Regex.isEmail(value)) {
                return CommonConstants.invalidEmailAddressFormat.tr;
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
                onPressed: () {},
                // Get.toNamed(Routes.VERIFY_CODE_FORGOT_PASSWORD),
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
                  CommonConstants.submit.tr.toLowerCase(),
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
