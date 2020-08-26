import 'package:flutter/material.dart';

class PedidosWidget extends StatelessWidget {
  final String ceramica;

  PedidosWidget(this.ceramica);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Pedidos',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new PedidosPage(title: 'Pedidos ' + this.ceramica),
    );
  }
}

class PedidosPage extends StatefulWidget {
  PedidosPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PedidosPageState createState() => _PedidosPageState();
}

class _PedidosPageState extends State<PedidosPage> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String dropdownValue = 'ET-121/7138';


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: Center(
          child: Text("Página de pedidos"),
        ), //center
      ), //container
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => new AlertDialog(
                    title: new Text("Novo Pedido"),
                    content: new Form(
                        key: _formKey,
                        child: Column(
                          
                          children: [
                            ...[
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Número do Pedido',
                                  labelText: 'Pedido',
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    title = value;
                                  });
                                },
                              ),

                              DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: Icon(Icons.arrow_downward),
                                  iconSize: 12,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.blue),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.blueAccent,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      dropdownValue = newValue;
                                    });
                                  },
                                  items: <String>['ET-121/7138', 'ET-129/7617', 'ET-129/7620', 'ET-129/7381']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),

                            ],
                          ],
                        )),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('Close me!'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ));
        }, //onPressed
        tooltip: 'Adicionar pedido',
        child: Icon(Icons.add),
      ), //floatingActionButton
    ); //Scaffold
  }
}
