import 'package:biblia_sagrada/config.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    super.key,
    this.icon,
    required this.buttonText,
    this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.iconColor, this.iconSize, this.fontSize,
  });

  final String buttonText;
  final Icon? icon;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final double? iconSize;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 150,
      height: height ?? 150,
      decoration: BoxDecoration(
        color: backgroundColor ?? buttonColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon!.icon, color: iconColor ?? Colors.white, size: iconSize ?? 40.0),
            Text(buttonText, style: TextStyle(color: textColor ?? Colors.white, fontSize: fontSize ?? 18.0)),
          ],
        ),
      ),
    );
  }
}
