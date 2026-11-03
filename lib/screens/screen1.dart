import 'package:flutter/material.dart';
import 'package:proyecto1/screens/screen2.dart';
import 'package:proyecto1/screens/screen3.dart';
import 'package:proyecto1/screens/screen4.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Color.fromARGB(255, 176, 161, 203),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Selecciona una opción:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              boton('Ejemplo de Rows', Colors.purple, context, Screen2()),
              SizedBox(height: 20),
              boton('Ejemplo de ListView', Colors.blue, context, Screen3()),
              SizedBox(height: 20),
              boton('Entradas de datos', Colors.red, context, Screen4()),
            ],
          ),
        ),
      ),
    );
  }

  Widget boton(
    String texto,
    Color color1,
    BuildContext context,
    StatelessWidget screen,
  ) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(texto, style: TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}
