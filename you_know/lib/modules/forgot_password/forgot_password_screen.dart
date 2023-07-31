import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../shared/constants/common.dart';
import '../auth/auth_controller.dart';
import '../login/components/background.dart';
import '../login/components/responsive.dart';
import 'component/forgot_password_from.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  final AuthController authController = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  size: 32,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          SizedBox(height: CommonConstants.defaultPadding / 0.2),
          SingleChildScrollView(
            child: Responsive(
              mobile: MobileForgotPassword(),
              desktop: Row(
                children: [
                  Expanded(
                    child: SvgPicture.asset("assets/icons/login.svg"),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 450,
                          child: ForgotPasswordScreen(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileForgotPassword extends StatelessWidget {
  const MobileForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: SvgPicture.asset(
              "assets/icons/login.svg",
              placeholderBuilder: (context) => SizedBox(
                width: double.infinity,
                height: 300,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ForgotPasswordForm(),
        ],
      ),
    );
  }
}
