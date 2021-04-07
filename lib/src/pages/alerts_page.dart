import 'package:flutter/material.dart';

class AlertsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerts'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios),
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text('Titulo del Alert'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido del Alerta'),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  //Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: Text('Cancelar'),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Ok'),
              ),
            ],
          );
        });
  }
}
