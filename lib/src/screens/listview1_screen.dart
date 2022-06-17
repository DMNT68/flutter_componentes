import 'package:componentes/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Obiwan Kenobi',
    'Anakin Skylewalker',
    'Luke Skylewalker',
    'Leia Skylewalker',
    'Yoda',
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 1 - Jedi'),
        ),
        body: ListView(
          children: [
            ...options
                .map(
                  (e) => ListTile(
                    leading: const Icon(Icons.light_mode_outlined,
                        color: AppTheme.primary),
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: AppTheme.primary),
                    onTap: () => print('clic'),
                  ),
                )
                .toList(),
          ],
        ));
  }
}
