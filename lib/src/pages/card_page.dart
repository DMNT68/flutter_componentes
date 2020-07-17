import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color:Colors.blue),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text('Aquí esta el subtitulo de la tarjeta, esto es una desmostración de como funciona el subtitulo de la tarjeta, por lo tanto necesitamos mucho texto.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('Cancelar')),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: FlatButton(onPressed: (){}, child: Text('Ok')),
              )
            ],
          )
        ],
      ),
    );

  }

  Widget _cardTipo2() {

    final card = Container(
      child: Column(
        children: <Widget>[

          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image:  NetworkImage('https://upload.wikimedia.org/wikipedia/commons/7/73/Cotopaxi_-_%C3%81ngel_Fel%C3%ADcisimo.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Landscape de Ecuador - El Cotopaxi')
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color:Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, 2.0)
          )
        ]
      ),

      child: ClipRRect(
        child: card, 
        borderRadius:BorderRadius.circular(30.0)
      )
    );

  }

}