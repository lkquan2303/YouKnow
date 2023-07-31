import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/home/home_controller.dart';
import '../constants/colors.dart';
import '../constants/common.dart';

class InputField extends StatelessWidget {
  final void Function(String?)? onSaved;

  final String hintText;
  final IconData? icon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;

  final FocusNode? focusNode;

  const InputField({
    Key? key,
    required this.hintText,
    this.icon,
    this.obscureText = false,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.onSaved,
    this.focusNode,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());

    return TextFormField(
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      cursorColor: CommonConstants.kPrimaryColor,
      controller: controller,
      onSaved: onSaved,
      focusNode: focusNode,
      obscureText: obscureText,
      style: TextStyle(
        color: ColorConstants.black,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            color: ColorConstants.blackText, fontWeight: FontWeight.normal),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(CommonConstants.defaultPadding),
          child: Icon(
            icon,
            color: focusNode?.hasFocus ?? false
                ? CommonConstants.kPrimaryColor
                : CommonConstants.kPrimaryColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: CommonConstants.kPrimaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
