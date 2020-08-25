import 'package:flutter/material.dart';

class PedidosEmbramaco extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title:'Pedidos',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        home: new PedidosPage(title: 'Pedidos Embramaco'),
    );
  }
}

class PedidosPage extends StatefulWidget {
   PedidosPage({Key key, this.title}): super(key: key);
   final String title;


  @override
  _PedidosPageState createState() => _PedidosPageState();
}

class _PedidosPageState extends State<PedidosPage>{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
    body: new Container(
      child: Center(
        child: Text("Página de pedidos"),
      ),//center
    ),//container
    floatingActionButton: FloatingActionButton(
      onPressed:(){},
      tooltip: 'Adicionar pedido',
      child: Icon(Icons.add),
    ),//floatingActionButton
  );//Scaffold
  }
}
