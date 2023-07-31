import 'package:flutter/material.dart';

class InputEditTextUnderLine extends StatefulWidget {
  final String labelText;
  final bool isDisable;
  final TextEditingController controller;
  final bool? isDateTimeClick;
  final Function? onPressed;

  InputEditTextUnderLine(
      {required this.labelText,
      required this.controller,
      required this.isDisable,
      this.isDateTimeClick,
      this.onPressed});

  @override
  _InputEditTextUnderLineState createState() => _InputEditTextUnderLineState();
}

class _InputEditTextUnderLineState extends State<InputEditTextUnderLine> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    if (widget.isDisable) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 35.0),
        child: GestureDetector(
          onTap: () {
            if (widget.isDateTimeClick == true) {
              // Check that isDateTimeClick is true and the field is not disabled
              if (widget.onPressed != null) {
                widget
                    .onPressed!(); // Call the onPressed function to show the date picker
              }
            }
          },
          child: Text(
            widget.controller.text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(bottom: 35.0),
        child: Theme(
          data: ThemeData(
            primaryColor: Colors.black, // Color for enabled state
            disabledColor: Colors.grey, // Color for disabled state
          ),
          child: TextField(
            controller: widget.controller, // Assign the controller
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 3),
              labelText: widget.labelText,
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: widget.labelText,
              hintStyle: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ),
      );
    }
  }
}
