import 'package:flutter/material.dart';

showAlertDialog(BuildContext context){
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: null,
  );

  AlertDialog alert = AlertDialog(
    title: Text("Novo Pedido"),
    content: Text("This is the content"),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context){
      return alert;
    },
  );
}
