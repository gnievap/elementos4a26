import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  // Variables para almacenar los valores de entrada
  bool _switchValue = false;
  double _sliderValue = 0.0;
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 5')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Entradas de datos'),
          // llamadas a los widgets de entrada de datos
          _entradaTexto(),
          _entradaSwitch(),
          _entradaSlider(),
        ],
      ),
    );
  }

  TextField _entradaTexto() {
    return TextField(
      controller: _textController,
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        border: OutlineInputBorder(),
      ),
      onChanged: (value) {
        print('Valor del TextField: $value');
      },
    );
  }

  Row _entradaSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('¿Te gusta Flutter?'),
        Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
              print('El valor del Switch es: $_switchValue');
            }); // Acción al cambiar el switch
          },
        ),
      ],
    );
  }

  Column _entradaSlider() {
    return Column(
      children: [
        Text('Indica qué tanto te gust Flutter:'),
        Slider(
          min: 0.0,
          max: 10.0,
          activeColor: const Color.fromARGB(255, 168, 147, 171),
          thumbColor: Colors.lime,
          value: _sliderValue,
          divisions: 10,
          label: '${_sliderValue.round()}',
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
              print('Se cambió el slider: $_sliderValue');
            }); // Acción al cambiar el slider
          },
        ),
      ],
    );
  }
}
