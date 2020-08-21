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
        CeramicaWidget("Delta", "delta.jpg"),
        CeramicaWidget("Embramaco","embramaco.jpg"),


      ])
    );
  }
}
