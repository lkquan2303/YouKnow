import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String? iconSrc;
  final Function? press;
  final double? width;
  final double? height;
  const SocialIcon({
    Key? key,
    this.iconSrc,
    this.press,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Image.asset(
        iconSrc!,
        height: height ?? 50,
        width: width ?? 50,
        fit: BoxFit.cover,
      ),
    );
  }
}
