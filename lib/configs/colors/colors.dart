import 'package:flutter/material.dart';

class Ux4gColorTheme {
  static const int _bluePrimaryValue = 0xFF1A73E9;
  static const int _successdefault = 0xFF34A853;

  static const int _amberPrimaryValue = 0xFFFFAA01;
  static const int _secondarydefault = 0xFF5A6370;
  static const int infoColors = 0xFF00AAFF;
  static const int _redPrimaryValue = 0xFFB3261D;

  static const MaterialColor primarycolor = MaterialColor(_bluePrimaryValue, <int, Color>{
    50: Color(0xFFE3F0FD),
    100: Color(0xFFB9DAFB),
    200: Color(0xFF8AC2F9),
    300: Color(0xFF5BAAF7),
    400: Color(0xFF3797F5),
    500: Color(_bluePrimaryValue),
    600: Color(0xFF1767D7),
    700: Color(0xFF1358C2),
    800: Color(0xFF0F4AAC),
    900: Color(0xFF08308A),
  });

  static const MaterialColor secondaryColor = MaterialColor(_secondarydefault, <int, Color>{
    50: Color(0xFFEDEFF2),
    100: Color(0xFFD2D6DB),
    200: Color(0xFFB5BBC4),
    300: Color(0xFF979FAA),
    400: Color(0xFF7F8995),
    500: Color(_secondarydefault),
    600: Color(0xFF515966),
    700: Color(0xFF474F5A),
    800: Color(0xFF3E454E),
    900: Color(0xFF2E333B),
  });

  static const MaterialColor successGreen = MaterialColor(_successdefault, <int, Color>{
    50: Color(0xFFE6F6EC),
    100: Color(0xFFC1E9CF),
    200: Color(0xFF97DAAE),
    300: Color(0xFF6DCB8C),
    400: Color(0xFF4EC072),
    500: Color(_successdefault),
    600: Color(0xFF2F9A4C),
    700: Color(0xFF288F42),
    800: Color(0xFF218438),
    900: Color(0xFF156D27),
  });

  static const infoColor = MaterialColor(infoColors, <int, Color>{
    50: Color(0xFFE0F7FF),
    100: Color(0xFFB3ECFF),
    200: Color(0xFF80DFFF),
    300: Color(0xFF4DD2FF),
    400: Color(0xFF26C9FF),
    500: Color(0xFF00AAFF),
    600: Color(0xFF0099E6),
    700: Color(0xFF0088CC),
    800: Color(0xFF0077B3),
    900: Color(0xFF005580),
  });

  static const MaterialColor warningColor = MaterialColor(_amberPrimaryValue, <int, Color>{
    50: Color(0xFFFFF5E0),
    100: Color(0xFFFFE5B3),
    200: Color(0xFFFFD480),
    300: Color(0xFFFFC24D),
    400: Color(0xFFFFB526),
    500: Color(_amberPrimaryValue),
    600: Color(0xFFE69901),
    700: Color(0xFFCC8701),
    800: Color(0xFFB37601),
    900: Color(0xFF805600),
  });

  static const MaterialColor errorColor = MaterialColor(_redPrimaryValue, <int, Color>{
    50: Color(0xFFFBEAEA),
    100: Color(0xFFF4C9C6),
    200: Color(0xFFEC9F9A),
    300: Color(0xFFE4756D),
    400: Color(0xFFDE574D),
    500: Color(_redPrimaryValue), // #B3261D
    600: Color(0xFFA02119),
    700: Color(0xFF8C1C15),
    800: Color(0xFF781711),
    900: Color(0xFF530F0B),
  });
}
