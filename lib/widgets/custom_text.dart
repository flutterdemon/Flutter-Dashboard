import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;
  CustomText({Key key, this.text, this.color, this.size, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontWeight: weight ?? FontWeight.normal,
        fontSize: size ?? 16,
      ),
    );
  }
}
