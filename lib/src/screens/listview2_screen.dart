import 'package:componentes/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Darth Vader',
    'Darth Sidius',
    'Conde Dooku',
    'General Grievous',
    'Darth Maul',
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 2 - Sith'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.dark_mode, color: AppTheme.primary),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary),
          onTap: () => print(options[index]),
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
