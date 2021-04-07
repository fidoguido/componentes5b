import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alerts_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Componentes App',
        //home: HomePage(),
        initialRoute: '/',
        routes: getApplicationsRoutes(),
        onGenerateRoute: (RouteSettings sttings) {
          print('Ruta llamada: {$sttings.name}');
          return MaterialPageRoute(builder: (context) => AlertsPage());
        },
      );
}
