import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  static final namePage = 'avatar'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.gamecored.com/wp-content/uploads/2019/09/The-Last-of-Us-Part-II-erger-1620x800.jpg'),
              radius: 22.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('AS'),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          fadeInDuration: Duration(milliseconds: 200),
          placeholder: AssetImage('assets/jar-loading.gif'),
          image:NetworkImage('https://as.com/meristation/imagenes/2016/12/07/noticia/1481116260_110588_1532345371_sumario_normal.jpg')),
      ),
    );
  }
}