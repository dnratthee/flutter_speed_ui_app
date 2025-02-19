import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Widget? child;
  final VoidCallback? onPressed;
  final Color? color;
  final double width;
  final double height;
  final double? fontSize;
  final Color? fontColor;
  final FontWeight fontWeight;
  final double redius;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry? borderRadius;

  MyButton({
    super.key,
    this.text = 'Button',
    this.child,
    this.onPressed,
    this.color = Colors.black,
    this.width = double.infinity,
    this.height = 58,
    this.fontSize = 15,
    this.fontColor = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.redius = 10,
    this.padding = const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius!,
        ),
      ),
      child: child ??
          Text(text,
              style: TextStyle(
                  fontSize: fontSize, color: fontColor, fontWeight: fontWeight),
              textAlign: TextAlign.center),
    );
  }
}
