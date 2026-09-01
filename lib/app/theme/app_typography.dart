import 'package:flutter/material.dart';

abstract final class AppTypography {
  static const String _fontFamily = 'Inter';

  static const TextStyle displayLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 34,
    fontWeight: FontWeight.w800,
    height: 1.2,
    letterSpacing: -0.5,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 26,
    fontWeight: FontWeight.w700,
    height: 1.3,
  );

  static const TextStyle titleLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.3,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  static const TextStyle labelLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.2,
  );
}
