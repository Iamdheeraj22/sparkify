import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sparkify/cores/themes/app_pallete.dart';

class Button extends StatelessWidget {
  const Button({
    required this.title,
    super.key,
    this.onPressed,
    this.color = AppPallete.red,
    this.borderRadius,
    this.width,
    this.height,
    this.fontSize = 16,
    this.textColor = Colors.white,
  });

  final String title;
  final VoidCallback? onPressed;
  final Color? color;
  final double? borderRadius;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final finalWidth = MediaQuery.sizeOf(context).width;
    final finalHeight = MediaQuery.sizeOf(context).height;
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
          minimumSize: Size(
            width ?? (finalWidth * 0.8),
            height ?? (finalHeight * 0.06),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
