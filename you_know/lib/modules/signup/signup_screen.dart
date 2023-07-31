import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/widgets/keyboard_form_field.dart';
import '../login/components/background.dart';
import '../login/components/responsive.dart';
import 'components/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileSignupScreen(),
          desktop: Row(
            children: [
              Expanded(
                child: SvgPicture.asset("assets/icons/signup.svg"),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 450,
                      child: SignUpForm(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
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
                "assets/icons/signup.svg",
                placeholderBuilder: (context) => SizedBox(
                  width: double.infinity,
                  height: 300,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SignUpForm()
            // const SocalSignUp()
          ],
        ),
      ),
    );
  }
}
