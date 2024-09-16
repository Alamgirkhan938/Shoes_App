import 'package:flutter/material.dart';

class LightText extends StatelessWidget {
  double size;
  final String text;
  final String font;
  Color color;
  TextOverflow textOverflow;
  LightText(
      {super.key,
      this.textOverflow = TextOverflow.ellipsis,
      this.font = 'font30',
      this.color = Colors.black,
      this.size = 20,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: textOverflow,
      text,
      style: TextStyle(fontSize: size, color: color, fontFamily: font),
    );
  }
}
