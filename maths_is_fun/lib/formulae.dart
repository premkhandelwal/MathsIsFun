import 'dart:ui';
import 'package:flutter/material.dart';

Map formulae = {
  "Expansions": {
    0: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "(a + b)",
              power: 2,
            ),
            Text(" = "),
            RaiseToPower(
              char: "a",
              power: 2,
            ),
            Text(" + 2ab + "),
            RaiseToPower(
              char: "b",
              power: 2,
            ),
          ],
        )),
    1: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "(a - b)",
              power: 2,
            ),
            Text("  = "),
            RaiseToPower(
              char: "a",
              power: 2,
            ),
            Text(" - 2ab + "),
            RaiseToPower(
              char: "b",
              power: 2,
            ),
          ],
        )),
    2: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "(a + b)",
              power: 3,
            ),
            Text("  = "),
            RaiseToPower(
              char: "a",
              power: 3,
            ),
            Text(" + "),
            RaiseToPower(
              char: "3a",
              power: 2,
            ),
            Text("b + 3a"),
            RaiseToPower(
              char: "b",
              power: 2,
            ),
            RaiseToPower(
              char: " + b",
              power: 3,
            ),
          ],
        )),
    3: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "(a - b)",
              power: 3,
            ),
            Text("  = "),
            RaiseToPower(
              char: "a",
              power: 3,
            ),
            Text(" - "),
            RaiseToPower(
              char: "3a",
              power: 2,
            ),
            Text("b + 3a"),
            RaiseToPower(
              char: "b",
              power: 2,
            ),
            RaiseToPower(
              char: " - b",
              power: 3,
            ),
          ],
        )),
  },
  "Indices": {Text("a+b =c")},
  "Trignometry": {
    0: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children:[
        RaiseToPower(
              char: "sin",
              power: 2,
             
            ),
        RaiseToPower(
              char: "θ + cos",
              power: 2,
            ),
       Text("θ = 1"),
             ],
      )),
            
   1: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
        RaiseToPower(
              char: "sec",
              power: 2, 
            ),
        RaiseToPower(
              char: "θ - tan",
              power: 2,
            ),
       Text("θ = 1"),
           ],
      )),
            
     2: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            Text("1+"),
        RaiseToPower(
             char: "tan",
             power: 2,
            ),
        RaiseToPower(
              char: "θ= 1/cot",
              power:2,
            ),
        Text("θ"),
          ],
     )),
   3:  DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            Text("tanθ.cotθ=1"),
            ]
        )),  
  4: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
        RaiseToPower(
             char: "sin",
             power: -1,
            ),
        RaiseToPower(
              char: "θ + cos",
              power:-1,
            ),
          Text("θ = π/2"),
        
          ],
     )),
            
  "Derivatives": {},
  "Integration": {},
  "Logarithms": {},

  },
};

class RaiseToPower extends StatelessWidget {
  RaiseToPower({Key key, this.char, this.power}) : super(key: key);
  final String char;
  final int power;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: char,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        WidgetSpan(
          child: Text("$power",
              style: TextStyle(
                fontFeatures: [
                  FontFeature.enable('sups'),
                ],
              )),
        ),
      ]),
    );
  }
}
