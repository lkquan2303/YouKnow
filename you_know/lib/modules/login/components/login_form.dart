import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/utils/regex.dart';
import '../../../shared/widgets/button.dart';
import '../../../shared/widgets/input_field.dart';
import '../../auth/auth_controller.dart';
import '../../login/components/already_have_an_account_acheck.dart';
import '../../signup/components/or_divider.dart';
import '../../signup/components/socal_sign_up.dart';
import '../../signup/signup_screen.dart';

class LoginForm extends GetView<AuthController> {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          InputField(
            controller: controller.loginUserNameController,
            hintText: CommonConstants.yourMail.tr,
            icon: Icons.person,
            focusNode: _emailFocus,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return CommonConstants.emailAddressIsRequired.tr;
              }
              if (!Regex.isEmail(value)) {
                return 'Invalid Email Format';
              }
              return null;
            },
          ),
          SizedBox(
            height: CommonConstants.defaultPadding / 2,
          ),
          InputField(
            controller: controller.loginPasswordController,
            hintText: CommonConstants.yourPassWord.tr,
            icon: Icons.lock,
            obscureText: true,
            focusNode: _passwordFocus,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return CommonConstants.passwordIsRequired.tr;
              }
              if (!Regex.isPasswordAtLeast8Characters(value)) {
                return CommonConstants.textErrorPassword.tr;
              }
              return null;
            },
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Get.toNamed(Routes.FORGOT_PASSWORD, arguments: controller);
              },
              child: Text(
                CommonConstants.forgotPassword.tr,
                style: TextStyle(
                  color: CommonConstants.kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: CommonConstants.defaultPadding),
          CommonWidgets.primaryButton(
            text: CommonConstants.btnSignIn.tr,
            onPressed: () => controller.login(context),
          ),
          SizedBox(height: CommonConstants.defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
          const OrDivider(),
          SocialSignUp(
            controller: controller,
          )
        ],
      ),
    );
  }
}
