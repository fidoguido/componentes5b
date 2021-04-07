import 'package:flutter/material.dart';

import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/alerts_page.dart';
import 'package:componentes/src/pages/avatars_page.dart';
import 'package:componentes/src/pages/cards_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertsPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'cards': (BuildContext context) => CardsPage(),
  };
}
