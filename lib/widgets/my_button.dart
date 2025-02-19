import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  final double width;
  final double height;
  final double? fontSize;
  final Color? fontColor;
  final double redius;

  const MyButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.color = Colors.black,
      this.width = double.infinity,
      this.height = 58,
      this.fontSize = 15,
      this.fontColor = Colors.white,
      this.redius = 10});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(redius),
        ),
      ),
      child: Text(text,
          style: TextStyle(fontSize: fontSize, color: fontColor),
          textAlign: TextAlign.center),
    );
  }
}
