import 'package:flutter/material.dart';

class CeramicaWidget extends StatelessWidget{

  CeramicaWidget(this.name, this.imageSrc):super();

  final String name;
  final String imageSrc;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        padding: EdgeInsets.all(20.0),

      child: Center(
                child: Column(
                  children: <Widget>[
                    Text('${name}', style: TextStyle(fontSize: 24.0)),
                    Padding(
                      padding: EdgeInsets.only(top:20.0),
                      child: Image.network(imageSrc)
                    )
                  ]
                )
      )
      )
    );
  }
}
