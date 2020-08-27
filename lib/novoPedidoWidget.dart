import 'package:flutter/material.dart';

showAlertDialog(BuildContext context){
  final _formKey = GlobalKey<FormState>();
  Widget saveButton = FlatButton(
    child: Text("save"),
    onPressed: null,
  );

  AlertDialog alert = AlertDialog(
    title: Text("Novo Pedido",
                style: TextStyle(color: Colors.blue[900])
              ),
    content: Row(
      children:<Widget>[
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
                  return 'Please enter some text';
                }
                return null;
              },
            ),//TextFormField
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
                child: Text('Submit'),
              ),
            ),
          ],//colum/children
        ),//form/column
      ),//form
        ),
      ],
),//row

    actions: [
      saveButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context){
      return alert;
    },
  );
}
