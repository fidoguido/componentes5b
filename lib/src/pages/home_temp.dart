import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(
        children: _crearItemes(),
      ),
    );
  }

  List<Widget> _crearItemes() {
    List<Widget> lista = new List<Widget>();
    for (var item in opciones) {
      final temp = ListTile(
        title: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        subtitle: Text('Cualquier cosa'),
        leading: Icon(Icons.ac_unit_outlined),
        trailing: Icon(Icons.arrow_forward_ios_outlined),
      );
      lista.add(temp);
    }
    return lista;
  }
}
