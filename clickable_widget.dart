import 'package:flutter/material.dart';

class ClickableWidget extends StatelessWidget {
  final Widget child;
  final GestureTapCallback onTap;
  final double elevation;
  final BorderRadius? borderRadius;
  final Color color;

  const ClickableWidget(
      {required this.child,
      required this.onTap,
      this.elevation = 0,
      this.color = Colors.transparent,
      this.borderRadius,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      shadowColor: Colors.grey.withOpacity(0.2),
      elevation: elevation,
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: child,
      ),
    );
  }
}
