import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.icon,
    required this.buttonText,
    this.onPressed,
    this.width,
    this.height,
    this.iconSize,
    this.fontSize,
    this.isCenter = false,
  });

  final String buttonText;
  final Icon? icon;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final double? iconSize;
  final double? fontSize;
  final bool isCenter;

  Widget _buildButton(BuildContext context) {
    final onPrimary = Theme.of(context).colorScheme.onPrimary;
    return Container(
      width: width ?? 150,
      height: height ?? 150,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed ?? () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon!.icon,
                color: onPrimary,
                size: iconSize ?? 40.0,
              ),
            Text(
              buttonText,
              style: TextStyle(
                color: onPrimary,
                fontSize: fontSize ?? 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final btn = _buildButton(context);
    return isCenter ? Center(child: btn) : btn;
  }
}
