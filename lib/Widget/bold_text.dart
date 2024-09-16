import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class BoldText extends StatelessWidget {
  double size;
  final String text;
  final String font;
  final Color?color;
  final TextAlign? align;
  TextOverflow textOverflow;
  BoldText({super.key,
    this.size=20,
    this.align,
    this.textOverflow=TextOverflow.ellipsis,
    this.font="font30",
    this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,overflow: textOverflow,
      style: TextStyle(fontSize: size,
          fontWeight: FontWeight.bold,
          color: color,fontFamily: font),);
  }
}