import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color? bordercolor;
  const ButtonWidget({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.height,
    required this.width,
    required this.child,
    this.bordercolor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        side: BorderSide(width: 2, color: bordercolor ?? Colors.transparent),
      ),
      child: child,
    );
  }
}
