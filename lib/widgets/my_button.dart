import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  final double width;
  final double height;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight fontWeight;
  final double redius;
  final BorderRadiusGeometry? borderRadius;

  MyButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color = Colors.black,
    this.width = double.infinity,
    this.height = 58,
    this.fontSize = 15,
    this.fontColor = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.redius = 10,
    BorderRadiusGeometry? borderRadius,
  }) : borderRadius = borderRadius ?? BorderRadius.all(Radius.circular(redius));

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        minimumSize: Size(width, height),
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius!,
        ),
      ),
      child: Text(text,
          style: TextStyle(
              fontSize: fontSize, color: fontColor, fontWeight: fontWeight),
          textAlign: TextAlign.center),
    );
  }
}
