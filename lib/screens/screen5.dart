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
  int radioSelected = 0;

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
          _entradaRadio(),
        ],
      ),
    );
  }

  TextField _entradaTexto() {
    return TextField(
      controller: _textController,
      obscureText: false,
      maxLength: 128,
      maxLines: 3,
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        border: UnderlineInputBorder(),
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

  Column _entradaRadio() {
    final ListTile kotlin = ListTile(
      title: const Text('Kotlin'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 1,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Selección del botón radio: $radioSelected');
            });
          },
        ),
      ),
    );

    final ListTile flutter = ListTile(
      title: const Text('Flutter'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 2,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Selección del botón radio: $radioSelected');
            });
          },
        ),
      ),
    );

    final ListTile reactNative = ListTile(
      title: const Text('React Native'),
      leading: Transform.scale(
        scale: 1.5,
        child: Radio(
          value: 3,
          groupValue: radioSelected,
          onChanged: (value) {
            setState(() {
              radioSelected = value!;
              print('Selección del botón radio: $radioSelected');
            });
          },
        ),
      ),
    );

    return Column(
      children: [
        Text('¿Qué prefieres para desarrollo móvil?'),
        kotlin,
        flutter,
        reactNative,
      ],
    );
  }
}
