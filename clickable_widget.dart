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
  final Color? highlightColor;
  final bool hasChildClick;

  const ClickableWidget(
      {required this.child,
      required this.onTap,
      this.elevation = 0,
      this.shadowColor,
      this.blurRadius = 0.0,
      this.spreadRadius = 0.0,
      this.color = Colors.transparent,
      this.highlightColor,
      this.borderRadius,
      this.hasChildClick = false,
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
            clipBehavior: Clip.hardEdge,
            borderRadius: borderRadius,
            child: hasChildClick
                ? InkWell(
                    highlightColor: highlightColor?.withOpacity(0.1) ??
                        Theme.of(context).highlightColor,
                    splashColor: highlightColor?.withOpacity(0.3) ??
                        Theme.of(context).splashColor,
                    borderRadius: borderRadius,
                    onTap: onTap,
                    child: child,
                  )
                : Stack(
                    fit: StackFit.passthrough,
                    clipBehavior: Clip.hardEdge,
                    children: [
                      child,
                      Positioned.fill(
                        child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              highlightColor:
                                  highlightColor?.withOpacity(0.1) ??
                                      Theme.of(context).highlightColor,
                              splashColor: highlightColor?.withOpacity(0.3) ??
                                  Theme.of(context).splashColor,
                              borderRadius: borderRadius,
                              onTap: onTap,
                            )),
                      ),
                    ],
                  )));
  }
}
