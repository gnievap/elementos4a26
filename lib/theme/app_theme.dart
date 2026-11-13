// El tema define colores, estilos y fuentes para la app.
// Constante de tema
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 196, 199, 199),
    appBarTheme: AppBarTheme(
      color: const Color.fromARGB(249, 20, 12, 40),
      titleTextStyle: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
