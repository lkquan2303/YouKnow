import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/constants/common.dart';
import '../../../shared/utils/regex.dart';
import '../../../shared/widgets/input_field.dart';
import '../../auth/auth_controller.dart';
import '../../login/components/already_have_an_account_acheck.dart';
import '../../signup/components/socal_sign_up.dart';
import 'or_divider.dart';

class SignUpForm extends GetView<AuthController> {
  // Create a FocusNode to track the focus state of the TextFormField
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _userNameFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.registerFormKey,
      child: Column(
        children: [
          InputField(
            controller: controller.registerUsernameController,
            hintText: CommonConstants.userName.tr,
            icon: Icons.person,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            onSaved: (username) {},
            focusNode: _userNameFocus,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return CommonConstants.usernameIsRequired.tr;
              }
              return null;
            },
          ),
          SizedBox(height: CommonConstants.defaultPadding / 2),
          InputField(
            controller: controller.registerEmailAddressController,
            hintText: CommonConstants.emailAddress.tr,
            icon: Icons.email,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onSaved: (email) {},
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
          SizedBox(height: CommonConstants.defaultPadding / 2),
          InputField(
            controller: controller.registerPasswordController,
            hintText: CommonConstants.password123.tr,
            icon: Icons.lock,
            obscureText: true,
            textInputAction: TextInputAction.next,
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
          SizedBox(height: CommonConstants.defaultPadding / 2),
          InputField(
            controller: controller.registerConfirmPasswordController,
            hintText: CommonConstants.confirmPassword.tr,
            icon: Icons.lock,
            obscureText: true,
            textInputAction: TextInputAction.done,
            focusNode: _confirmPasswordFocus,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return CommonConstants.confirmPasswordIsRequired.tr;
              }
              if (value != controller.registerPasswordController.text) {
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
                onPressed: () => controller.register(context),
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
                  CommonConstants.btnSignUp.tr.toUpperCase(),
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ),
          SizedBox(height: CommonConstants.defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const LoginScreen();
              //     },
              //   ),
              // );
            },
          ),
          const OrDivider(),
          SocialSignUp(
            controller: controller,
          ),
          SizedBox(height: CommonConstants.defaultPadding * 2),
        ],
      ),
    );
  }
}
