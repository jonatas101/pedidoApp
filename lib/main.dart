import 'package:flutter/material.dart';

import './ceramicas.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:'Pedidos',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: new MyHomePage(title: 'Cerâmicas'),
    );
  }
}

class MyHomePage extends StatelessWidget{
  MyHomePage({Key key, this.title}) :super(key: key);

  final String title;

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new ListView(children:<Widget>[
        CeramicaWidget("Delta", "https://www.deltaceramica.com.br/img/logo-down.jpg"),
        CeramicaWidget("Embramaco","https://yata-apix-2f602a0f-05cf-4799-8df7-021296412828.lss.locawebcorp.com.br/197b6c1accc846b79ad9bce28bdfd2c5.jpg"),


      ])
    );
  }
}
