import 'package:flutter/material.dart';

class ScaleTextWidget extends StatelessWidget {
  const ScaleTextWidget({super.key, this.style, required this.text});
  final TextStyle? style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style, textScaler: TextScaler.linear(1.5));
  }
}
