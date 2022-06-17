import 'package:flutter/cupertino.dart';

class MenuOptions {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOptions({
    required this.route,
    required this.name,
    required this.screen,
    required this.icon,
  });
}
