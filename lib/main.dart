import 'package:flutter/material.dart';
import 'package:proyecto1/screens/screen1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // quita la etiqueta de debug
      title: 'Proyecto 1', // título de la app
      home: Screen1(), // qué ventana se muestra al inicio
    );
  }
}
