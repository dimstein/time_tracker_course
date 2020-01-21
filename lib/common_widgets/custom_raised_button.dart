import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;
  final double height;

  CustomRaisedButton(
      {Key key,
      this.child,
      this.color,
      this.borderRadius: 2.0,
      this.onPressed,
      this.height: 50.0})
      : assert(borderRadius != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        child: child,
        color: color,
        disabledColor: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        )),
        onPressed: onPressed,
      ),
    );
  }
}
