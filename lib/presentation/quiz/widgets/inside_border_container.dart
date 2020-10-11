import 'package:flutter/material.dart';

///custom widget used to place children and parent at the same boundaries
class InsideBorderContainer extends StatelessWidget {
  final double width, height;
  final Color backgroundColor;
  final Border border;
  final BorderRadius borderRadius;
  final Widget child;
  const InsideBorderContainer(
      {Key key,
      @required this.width,
      @required this.height,
      this.borderRadius,
      @required this.child,
      this.backgroundColor,
      @required this.border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: border,
            borderRadius: borderRadius,
          ),
        ),
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
          ),
          child: child,
        ),
      ],
    );
  }
}
