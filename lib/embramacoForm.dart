import 'package:flutter/material.dart';

class PedidosEmbramaco extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:'Pedidos',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: new PedidosPage(title: 'Pedidos'),
    );
  }
}

class PedidosPage extends StatefulWidget {
  const PedidosPage({Key key, this.title}): super(key: key);

  final String title;

  @override
  _PedidosPageState createState() => _PedidosPageState();
}

class _PedidosPageState extends State<PedidosPage>{
  @override
  Widget build(BuildContext context){
    return Container(
      child: Center(
        child: Text("Página de pedidos"),
      ),//center
    );
  }
}
