import 'package:flutter/material.dart';

class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return FlutterFlowTheme();
  }

  Color get primary => const Color(0xFF4DB051);
  Color get primaryBackground => const Color(0xFFF1F4F8);
  Color get secondaryBackground => const Color(0xFFF1F4F8);
  Color get primaryText => const Color(0xFF000000);
  Color get secondaryText => const Color(0xFF000000);
  Color get alternate => const Color(0xFF4DB051);
  Color get error => const Color(0xFFFF0000);
  Color get accent1 => const Color(0xFF4DB051);
  Color get labelLarge => const Color(0xFF39D8C0);

  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Inter',
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: primaryText,
      );

  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Inter',
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: primaryText,
      );

  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Inter',
        fontSize: 14.0,
        color: primaryText,
      );

  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Inter',
        fontSize: 16.0,
        color: primaryText,
      );

  // Nuevos estilos
  TextStyle get headline5 => TextStyle(
        fontFamily: 'Inter',
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: primaryText,
      );

  TextStyle get subtitle1 => TextStyle(
        fontFamily: 'Inter',
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        color: primaryText,
      );

  TextStyle get bodyText1 => TextStyle(
        fontFamily: 'Inter',
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
        color: primaryText,
      );

  TextStyle get bodyText2 => TextStyle(
        fontFamily: 'Inter',
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: primaryText,
      );
}
