import 'package:flutter/material.dart';

class FormPedidoWidget extends StatefulWidget {
  @override
  _FormPedidoWidgetState createState() => _FormPedidoWidgetState();
}

class _FormPedidoWidgetState extends State<FormPedidoWidget> {
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
