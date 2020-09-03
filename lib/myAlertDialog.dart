import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pedidosApp/formPedidoWidget.dart';

showAlertDialog(BuildContext context) {
  Widget saveButton = FlatButton(
    child: Text("save"),
    onPressed: null,
  );

  AlertDialog alert = AlertDialog(
    title: Text("Novo Pedido", style: TextStyle(color: Colors.blue[900])),
    content: FormPedidoWidget(),
    actions: [
      saveButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
