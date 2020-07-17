import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['UNO','DOS','TRES','CUATRO','CINCO'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }


  List <Widget> _crearItems() {

    List <Widget> lista = new List<Widget>();

    for (var opt in opciones) {
      
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
            ..add(Divider());
      // lista.add(Divider());
    } 

    return lista;
  }

  List <Widget> _crearItemsCorta() {

    return opciones.map( ( item ) {

      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('subtitle'),
            leading: Icon(Icons.assignment_ind),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );

    }).toList();

  // return widgets;
  }


}