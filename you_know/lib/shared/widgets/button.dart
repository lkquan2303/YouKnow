import 'package:flutter/material.dart';

import '../constants/common.dart';

class CommonWidgets {
  static Widget primaryButton({
    required String text,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: CommonConstants.kPrimaryColor,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        ),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
