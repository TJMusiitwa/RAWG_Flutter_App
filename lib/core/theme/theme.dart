import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF121212),
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFFE0E0E0),
        secondary: Color(0xFF03DAC6),
        surface: Color(0xFF1E1E1E),
        error: Color(0xFFCF6679),
        onPrimary: Colors.black,
        onSecondary: Colors.black,
        onSurface: Colors.white,
        onError: Colors.black,
      ),
      textTheme: GoogleFonts.interTextTheme(
        ThemeData(brightness: Brightness.dark).textTheme,
      ).copyWith(
        displayLarge: GoogleFonts.inter(fontSize: 57, fontWeight: FontWeight.bold),
        displayMedium: GoogleFonts.inter(fontSize: 45, fontWeight: FontWeight.bold),
        displaySmall: GoogleFonts.inter(fontSize: 36, fontWeight: FontWeight.bold),
        headlineLarge: GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.w700),
        headlineMedium: GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.w700),
        headlineSmall: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w600),
        titleLarge: GoogleFonts.inter(fontSize: 22, fontWeight: FontWeight.w600),
        titleMedium: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600),
        titleSmall: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
        bodyLarge: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400),
        bodyMedium: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400),
        bodySmall: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w400),
        labelLarge: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
        labelMedium: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500),
        labelSmall: GoogleFonts.inter(fontSize: 11, fontWeight: FontWeight.w500),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF121212),
        elevation: 0,
        centerTitle: false,
      ),
      cardTheme: CardThemeData(
        color: const Color(0xFF1E1E1E),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}
