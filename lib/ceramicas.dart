import 'package:flutter/material.dart';

import './pedidosWidget.dart';

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
            if (this.name == 'Embramaco'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PedidosEmbramaco()),
            );
          };//if
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
