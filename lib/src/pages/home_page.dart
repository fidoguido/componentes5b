import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> spanshot) {
        return ListView(
          children: _crearListaItem(spanshot.data, context),
        );
      },
    );
  }
}

List<Widget> _crearListaItem(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];

  data.forEach((item) {
    final widgetTemp = ListTile(
      title: Text(item['texto']),
      leading: getIcon(item['icon']),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, item['ruta']);
      },
    );
    /*
    opciones.add(widgetTemp);
    opciones.add(Divider());
    */
    opciones
      ..add(widgetTemp)
      ..add(Divider(
        height: 30.0,
        color: Colors.blue,
      ));
  });

  return opciones;
}
