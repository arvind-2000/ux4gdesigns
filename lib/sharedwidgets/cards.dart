import 'package:flutter/material.dart';

class CardShadow extends StatelessWidget {
  const CardShadow({
    super.key,
    required this.child,
    this.radius,
    this.color,
    this.shadowColor,
    this.margin,
    this.padding,
  });
  final Widget child;
  final double? radius;
  final Color? color;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color? shadowColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius ?? 8),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 4,
            color: shadowColor ?? Colors.black.withValues(alpha: 0.1),
          ),
        ],
      ),
      child: child,
    );
  }
}
