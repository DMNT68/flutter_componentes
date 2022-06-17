import 'package:componentes/models/model.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[ 
    // TODO: borrar home
    MenuOptions(route: 'home', name: 'Home Screen', screen:const HomeScreen(), icon: Icons.home),
    MenuOptions(route: 'listview1', name: 'ListView tipo 1', screen: const ListView1Screen(), icon: Icons.list),
    MenuOptions(route: 'listview2', name: 'ListView tipo 2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOptions(route: 'alerts', name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOptions(route: 'card', name: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> approutes={};

    for (final option in menuOptions) {
      approutes.addAll({ option.route: (BuildContext context) => option.screen});
    }

    return approutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ListView1Screen(),
    );
  }
}
