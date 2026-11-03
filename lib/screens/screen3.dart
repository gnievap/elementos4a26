import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final dogs = const ['Ginger', 'KC', 'Blackie', 'Nicky', 'Candy', 'Dobbie'];

  final cats = const ['Moji', 'Moka', 'Felix', 'Pikachu', 'Frenchie'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: ListView(
        children: [
          ...dogs.map(
            (dog) => ListTile(
              leading: Icon(Icons.pets_rounded),
              title: Text(dog),
              subtitle: Text('Un perro maravilloso'),
              trailing: Icon(Icons.arrow_forward),
              tileColor: Color.fromARGB(111, 195, 230, 241),
              iconColor: Colors.amberAccent,
              textColor: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          Divider(),
          ...cats.map(
            (cat) => ListTile(
              leading: Icon(Icons.pets_rounded),
              title: Text(cat),
              subtitle: Text('Gatito complicado'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}
