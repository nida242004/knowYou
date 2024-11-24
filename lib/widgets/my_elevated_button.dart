import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color;
  final Color? disabledColor;
  final Color? textColor;
  final Color? disabledTextColor;
  final Color? hoverColor;
  final Color? splashColor;
  final double? elevation;
  final double? disabledElevation;
  final EdgeInsetsGeometry? padding;
  final OutlinedBorder? shape;

  MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.color,
    this.disabledColor,
    this.textColor,
    this.disabledTextColor,
    this.hoverColor,
    this.splashColor,
    this.elevation,
    this.disabledElevation,
    this.padding,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
        if (states.contains(MaterialState.disabled)) {
          return disabledColor ?? color; // Use disabledColor if exists, otherwise fallback to color
        } else if (states.contains(MaterialState.hovered)) {
          return hoverColor ?? color; // Use hoverColor if exists, otherwise fallback to color
        }
        return color;
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
        if (states.contains(MaterialState.disabled)) {
          return disabledTextColor ?? textColor; // Use disabledTextColor if exists, otherwise fallback to textColor
        }
        return textColor;
      }),
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
        if (states.contains(MaterialState.pressed)) {
          return splashColor; // Set splashColor for pressed state
        }
        return null;
      }),
      elevation: MaterialStateProperty.resolveWith<double?>((states) {
        if (states.contains(MaterialState.disabled)) {
          return disabledElevation ?? elevation; // Use disabledElevation if exists, otherwise fallback to elevation
        }
        return elevation;
      }),
      shape: MaterialStateProperty.all<OutlinedBorder?>(shape),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(padding),
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: child,
    );
  }
}
