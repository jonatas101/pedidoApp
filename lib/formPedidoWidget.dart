import 'package:flutter/material.dart';

class FormPedidoWidget extends StatefulWidget {
  @override
  _FormPedidoWidgetState createState() => _FormPedidoWidgetState();
}

class _FormPedidoWidgetState extends State<FormPedidoWidget> {
  String dropdownValue = 'itens';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Número do Pedido',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Informe o número do pedido';
                      }
                      return null;
                    },
                  ), //TextFormField
                  Expanded(
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 16,
                      elevation: 20,
                      style: TextStyle(color: Colors.blue[900]),
                      underline: Container(height: 2.0, color: Colors.blueGrey, alignment: Alignment.topRight),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        'itens',
                        'ET-121/7138',
                        'ET-129/7617',
                        'ET-129/7620',
                        'ET-129/7381',
                        'ET-129/7315'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        if (_formKey.currentState.validate()) {
                          // Process data.
                        }
                      },
                      child: Text('enviar'),
                    ),
                  ),
                ], //colum/children
              ), //form/column
            ), //form
          ),

        ],
      ),
    );
  }
}
