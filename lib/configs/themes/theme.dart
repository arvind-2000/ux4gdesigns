import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ux4gdesigns/configs/colors/colors.dart';

final appTheme = ThemeData(
  appBarTheme: AppBarTheme(color: Ux4gColorTheme.secondaryColor[100]),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStateTextStyle.resolveWith((b) => TextStyle(fontSize: 14)),
      padding: WidgetStateProperty.resolveWith(
        (v) => EdgeInsets.symmetric(vertical: 18, horizontal: 24),
      ),
      foregroundColor: WidgetStateColor.resolveWith((v) => Ux4gColorTheme.primarycolor),
      side: WidgetStateBorderSide.resolveWith(
        (v) => BorderSide(color: Ux4gColorTheme.primarycolor),
      ),
      shape: WidgetStateOutlinedBorder.resolveWith(
        (v) => RoundedRectangleBorder(
          side: BorderSide(color: Ux4gColorTheme.primarycolor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStateTextStyle.resolveWith((b) => TextStyle(fontSize: 14)),
      padding: WidgetStateProperty.resolveWith(
        (v) => EdgeInsets.symmetric(vertical: 18, horizontal: 24),
      ),
      backgroundColor: WidgetStateColor.resolveWith((v) => Ux4gColorTheme.primarycolor),
      foregroundColor: WidgetStateColor.resolveWith((v) => Colors.white),
      shape: WidgetStateOutlinedBorder.resolveWith(
        (v) => RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: Ux4gColorTheme.primarycolor,
    onPrimary: const Color.fromARGB(255, 255, 255, 255),
    secondary: Ux4gColorTheme.secondaryColor,
    onSecondary: Ux4gColorTheme.secondaryColor[100]!,
    error: Ux4gColorTheme.errorColor,
    onError: Ux4gColorTheme.errorColor[100]!,
    surface: const Color.fromARGB(255, 232, 235, 238),
    onSurface: Ux4gColorTheme.secondaryColor[900]!,
  ),
  drawerTheme: DrawerThemeData(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.notoSansTextTheme().displayLarge?.copyWith(
      fontSize: 80,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: GoogleFonts.notoSansTextTheme().displayLarge?.copyWith(
      fontSize: 72,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: GoogleFonts.notoSansTextTheme().displayLarge?.copyWith(fontSize: 64),

    headlineLarge: GoogleFonts.notoSansTextTheme().headlineLarge?.copyWith(
      fontSize: 40,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: GoogleFonts.notoSansTextTheme().headlineLarge?.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: GoogleFonts.notoSansTextTheme().headlineLarge?.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w500,
    ),

    titleLarge: GoogleFonts.notoSansTextTheme().titleLarge?.copyWith(fontSize: 22),
    titleMedium: GoogleFonts.notoSansTextTheme().titleLarge?.copyWith(fontSize: 16),
    titleSmall: GoogleFonts.notoSansTextTheme().titleLarge?.copyWith(fontSize: 14),

    bodyLarge: GoogleFonts.notoSansTextTheme().bodyLarge?.copyWith(fontSize: 16),
    bodyMedium: GoogleFonts.notoSansTextTheme().bodyLarge?.copyWith(fontSize: 14),
    bodySmall: GoogleFonts.notoSansTextTheme().bodyLarge?.copyWith(fontSize: 12),

    labelLarge: GoogleFonts.notoSansTextTheme().labelLarge?.copyWith(fontSize: 14),
    labelMedium: GoogleFonts.notoSansTextTheme().labelLarge?.copyWith(fontSize: 12),
    labelSmall: GoogleFonts.notoSansTextTheme().labelLarge?.copyWith(fontSize: 10),
  ),
);
