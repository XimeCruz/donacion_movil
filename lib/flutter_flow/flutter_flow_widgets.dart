import 'package:flutter/material.dart';

class FFButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final FFButtonOptions options;

  const FFButtonWidget({
    required this.text,
    required this.onPressed,
    required this.options,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: options.color, // Cambiado a backgroundColor
        minimumSize: Size(options.width, options.height),
        padding: options.padding,
        textStyle: options.textStyle,
        elevation: options.elevation,
        shape: RoundedRectangleBorder(
          borderRadius: options.borderRadius,
          side: options.borderSide,
        ),
      ),
      child: Text(
        text,
        style: options.textStyle.copyWith(color: Colors.black),
      ),
    );
  }
}

class FFButtonOptions {
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry iconPadding;
  final Color color;
  final TextStyle textStyle;
  final double elevation;
  final BorderSide borderSide;
  final BorderRadius borderRadius;

  const FFButtonOptions({
    required this.width,
    required this.height,
    required this.padding,
    required this.iconPadding,
    required this.color,
    required this.textStyle,
    required this.elevation,
    required this.borderSide,
    required this.borderRadius,
  });
}
