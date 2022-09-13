import 'package:flutter/material.dart';

class ClickableWidget extends StatelessWidget {
  final Widget child;
  final GestureTapCallback onTap;
  final double elevation;
  final double topLeftR;
  final double topRightR;
  final double bottomLeftR;
  final double bottomRightR;
  final Color color;

  const ClickableWidget(
      {required this.child,
      required this.onTap,
      this.elevation = 0,
      this.color = Colors.white,
      this.topLeftR = 0,
      this.topRightR = 0,
      this.bottomLeftR = 0,
      this.bottomRightR = 0,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      shadowColor: Colors.grey.withOpacity(0.2),
      elevation: elevation,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeftR),
          topRight: Radius.circular(topRightR),
          bottomLeft: Radius.circular(bottomLeftR),
          bottomRight: Radius.circular(bottomRightR)),
      child: InkWell(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftR),
            topRight: Radius.circular(topRightR),
            bottomLeft: Radius.circular(bottomLeftR),
            bottomRight: Radius.circular(bottomRightR)),
        onTap: onTap,
        child: child,
      ),
    );
  }
}
