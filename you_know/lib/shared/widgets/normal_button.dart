import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  const NormalButton({
    super.key,
     this.title,
    required this.onPressed,
    required this.child,
  });
  final String? title;
  final Function? onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed as void Function()?,
      child: child,
    );
  }
}
