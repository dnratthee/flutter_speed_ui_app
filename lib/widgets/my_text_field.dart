import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  final EdgeInsetsGeometry contentPadding;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight fontWeight;
  final double redius;
  final BorderRadius borderRadius;
  final BorderSide borderSide;
  final bool isPassword;

  const MyTextField({
    super.key,
    required this.text,
    this.onPressed,
    this.color = const Color(0xFFF3F3F3),
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 15),
    this.fontSize = 15,
    this.fontColor = const Color(0xFF464444),
    this.fontWeight = FontWeight.w500,
    this.redius = 10,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.borderSide = BorderSide.none,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: color,
        filled: true,
        contentPadding: contentPadding,
        hintText: text,
        hintStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: fontColor,
        ),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: borderSide,
        ),
      ),
      obscureText: isPassword,
    );
  }
}
