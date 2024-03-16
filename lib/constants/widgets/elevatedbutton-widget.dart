import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
    required this.color,
    required this.title,
    required this.style,
    this.icon,
    this.borderSide,
    this.elevation = 0,
    required this.onPressed,
    required this.width,
  });

  final Color color;
  final String title;
  final TextStyle style;
  final Widget? icon;
  final BorderSide? borderSide;
  final double elevation;
  final VoidCallback onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SizedBox(
        //width: double.infinity,
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: elevation,
            backgroundColor: color,
            fixedSize: Size.fromHeight(60),
            side: borderSide,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: style,
          ),
        ),
      ),
    );
  }
}
