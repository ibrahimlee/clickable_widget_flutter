import 'package:flutter/material.dart';

class ClickableWidget extends StatelessWidget {
  final Widget child;
  final GestureTapCallback onTap;
  final double elevation;
  final Color? shadowColor;
  final double blurRadius;
  final double spreadRadius;
  final BorderRadius? borderRadius;
  final Color color;

  const ClickableWidget(
      {required this.child,
      required this.onTap,
      this.elevation = 0,
      this.shadowColor,
      this.blurRadius = 0.0,
      this.spreadRadius = 0.0,
      this.color = Colors.transparent,
      this.borderRadius,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.transparent,
            blurRadius: blurRadius,
            spreadRadius: spreadRadius,
            offset: const Offset(0, 0),
          )
        ],
      ),
      child: Material(
        color: color,
        shadowColor: shadowColor,
        elevation: elevation,
        borderRadius: borderRadius,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
}
