import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {

  List<dynamic>? opciones = [];

  _MenuProvider(){
    // cargaData();
  }

  Future <List<dynamic>?> cargaData() async {

    final resp = await rootBundle.loadString('data/menu_opts.json');
      
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
  
    return opciones;

  }

}

final menuProvider = new _MenuProvider();