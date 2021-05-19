import 'package:flutter/material.dart';
import 'formulae.dart';

class Formulae extends StatefulWidget {
  Formulae({this.section, Key key}) : super(key: key);
  final String section;
  @override
  _FormulaeState createState() => _FormulaeState();
}

class _FormulaeState extends State<Formulae> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.section,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: formulae[widget.section].length,
          itemBuilder: (BuildContext ctx, int index) {
            return ListTile(
              title: formulae[widget.section][index],
              // tileColor: Colors.white,
            );
          }),
    );
  }
}



