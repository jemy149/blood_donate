import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  final String text;
final TextStyle? style;
final double fontSize;
  const DefaultText({Key? key, required this.text, this.style,  this.fontSize = 12.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:TextStyle(
        fontSize: fontSize,
      ),
    );
  }
}
