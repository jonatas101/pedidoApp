import 'package:flutter/material.dart';

import './pedidosWidget.dart';

class CeramicaWidget extends StatelessWidget {

  final String name;
  final String imageSrc;
  
  CeramicaWidget(this.name, this.imageSrc) : super();



  @override
  Widget build(BuildContext context) {
    return Container(

      child: new Card(
      child: new InkWell(
          onTap:() {
            if (this.name == 'Embramaco'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PedidosWidget('Embramaco')),
            );
          } else if(this.name == 'Delta'){

            Navigator.push(context, MaterialPageRoute(builder: (context) => PedidosWidget('Delta')));//Navigator
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
