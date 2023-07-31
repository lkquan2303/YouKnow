import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/constants/common.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login
              ? CommonConstants.donHaveAnAcount.tr
              : CommonConstants.alreadyHaveAnAccount.tr,
          style: TextStyle(
            color: CommonConstants.kPrimaryColor,
          ),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? CommonConstants.btnSignUp.tr : CommonConstants.btnSignIn.tr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: CommonConstants.kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
