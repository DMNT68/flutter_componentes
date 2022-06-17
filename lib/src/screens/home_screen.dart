import 'package:componentes/src/router/app_routes.dart';
import 'package:componentes/src/screens/listview1_screen.dart';
import 'package:componentes/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
              title: Text(menuOptions[index].name),
              onTap: () {
                // final route = MaterialPageRoute(builder: (context) => const ListView1Screen(),);
                Navigator.pushNamed(context, menuOptions[index].route);
              },
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppTheme.primary,
              ),
            ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
