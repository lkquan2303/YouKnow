import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/widgets/keyboard_form_field.dart';
import '../Login/components/login_form.dart';
import '../login/components/background.dart';
import '../login/components/responsive.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileLoginScreen(),
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
                      child: LoginForm(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardFormField(
      child: Padding(
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
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
