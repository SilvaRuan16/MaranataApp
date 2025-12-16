import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    super.key,
    required this.icon,
    required this.buttonText,
    required this.onPressed,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.iconColor, this.iconSize, this.fontSize,
  });

  final String buttonText;
  final Icon icon;
  final Function? onPressed;
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
        color: backgroundColor ?? Colors.brown,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ElevatedButton(
        onPressed: null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon.icon, color: iconColor ?? Colors.white, size: iconSize ?? 40.0),
            Text(buttonText, style: TextStyle(color: textColor ?? Colors.white, fontSize: fontSize ?? 18.0)),
          ],
        ),
      ),
    );
  }
}
