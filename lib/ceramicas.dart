import 'package:flutter/material.dart';

import './embramacoForm.dart';

class CeramicaWidget extends StatelessWidget {
  CeramicaWidget(this.name, this.imageSrc) : super();

  final String name;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: new Card(
      child: new InkWell(
          onTap:() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PedidosEmbramaco()),
            );
          },//onTap
          child: Image.asset('assets/images/'+ imageSrc,
            fit: BoxFit.fill,
          ),//Image.asset
        ),//InkWell
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(20),
      ),

    );
  }
}
