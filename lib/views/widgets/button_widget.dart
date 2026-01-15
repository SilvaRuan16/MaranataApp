import 'package:biblia_sagrada/core/constants/constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.icon,
    this.buttonText,
    this.onPressed,
    this.width,
    this.height,
  });

  final String? buttonText;
  final IconData? icon;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;

  Widget _buildButton(BuildContext context) {
    final onPrimary = Theme.of(context).colorScheme.onPrimary;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width ?? 150,
        height: height ?? 100,
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
                Icon(icon, color: onPrimary, size: textSizeSystem),
              Text(
                buttonText!,
                style: TextStyle(color: onPrimary, fontSize: textSizeSystem),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildButton(context);
  }
}
