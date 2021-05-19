import 'package:flutter/material.dart';
import 'package:maths_is_fun/formulaeDIsplayScreen.dart';
import 'package:maths_is_fun/globals.dart' as globals;

class FormulaPage extends StatefulWidget {
  @override
  _FormulaPageState createState() => _FormulaPageState();
}

Map divisions = {
  0: {
    "name": "Expansions",
    "icon": Icons.science,
  },
  1: {
    "name": "Indices",
    "icon": Icons.science,
  },
  2: {
    "name": "Trignometry",
    "icon": Icons.science,
  },
  3: {
    "name": "Derivatives",
    "icon": Icons.science,
  },
  4: {
    "name": "Integration",
    "icon": Icons.science,
  },
  5: {
    "name": "Logarithms",
    "icon": Icons.science,
  },
};

class _FormulaPageState extends State<FormulaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        // color: Colors.orange,
        height: globals.height * 0.962,
        child: GridView.builder(
            itemCount: divisions.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => Formulae(
                                section: divisions[index]["name"],
                              )));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.science,
                      color: Colors.grey,
                      size: 40,
                    ),
                    Center(
                      child: Text(
                        divisions[index]["name"],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )
                  ],
                ),
              );
              /* GestureDetector(
              child: Container(
                  // color: Colors.grey,
                  child: Center(
                      child: Text(
                "Basic",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ))),
            ), */
            }));
  }
}
