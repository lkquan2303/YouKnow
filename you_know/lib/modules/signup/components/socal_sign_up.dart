import 'package:flutter/material.dart';

import '../../auth/auth_controller.dart';
import '../../signup/components/social_icon.dart';

class SocialSignUp extends StatelessWidget {
  const SocialSignUp({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final AuthController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialIcon(
            width: 45,
            height: 45,
            iconSrc: "assets/images/facebook-logo.png",
            press: () {}),
        SocialIcon(
          width: 60,
          height: 60,
          iconSrc: "assets/images/icon-google.png",
          press: () {},
        ),
        SocialIcon(
          width: 40,
          height: 40,
          iconSrc: "assets/images/icon-zalo.png",
          press: () {},
        ),
      ],
    );
  }
}
