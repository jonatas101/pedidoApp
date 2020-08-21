import 'package:flutter/material.dart';

class CeramicaWidget extends StatelessWidget {
  CeramicaWidget(this.name, this.imageSrc) : super();

  final String name;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.asset('assets/images/'+ imageSrc,
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(20),
      ),
    );
  }
}
