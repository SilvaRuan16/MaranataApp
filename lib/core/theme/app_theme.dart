import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    scaffoldBackgroundColor: const Color(0xFFF8FAFC),

    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0061A4), // Cor dos botões
      surface: Color(0xFFF8FAFC), // Cor da AppBar e superfícies
      onSurface: Color(0xFF0F172A), // Cor de textos e ícones gerais
      onPrimary: Color(0xFFF8FAFC), // Texto e Ícones dentro de botões primários
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFF8FAFC),
      foregroundColor: Color(0xFF0F172A), // Cor do texto e ícones na AppBar
      elevation: 0,
      centerTitle: true,
    ),

    iconTheme: const IconThemeData(color: Color(0xFF0F172A)),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFF0F172A)),
      bodyMedium: TextStyle(color: Color(0xFF0F172A)),
      titleLarge: TextStyle(color: Color(0xFF0F172A)),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF0061A4),
        foregroundColor: const Color(
          0xFFF8FAFC,
        ), // Texto e ícone dentro do botão
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: const Color(0xFF0F172A),

    colorScheme: const ColorScheme.dark(
      primary: Color(0xFF0061A4), // Cor dos botões
      surface: Color(0xFF0F172A), // Cor da AppBar e superfícies no dark
      onSurface: Color(0xFFF1F5F9), // Cor de textos e ícones no dark
      onPrimary: Color(0xFFF1F5F9), // Texto e ícones dentro de botões no dark
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF0F172A),
      foregroundColor: Color(0xFFF1F5F9),
      elevation: 0,
      centerTitle: true,
    ),

    iconTheme: const IconThemeData(color: Color(0xFFF1F5F9)),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xFFF1F5F9)),
      bodyMedium: TextStyle(color: Color(0xFFF1F5F9)),
      titleLarge: TextStyle(color: Color(0xFFF1F5F9)),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF0061A4),
        foregroundColor: const Color(
          0xFFF8FAFC,
        ), // Texto e ícone dentro do botão
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  );
}
