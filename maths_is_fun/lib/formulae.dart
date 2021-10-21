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
    4: DefaultTextStyle(
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
    2: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            Text(
              "(a + b)(a - b)",
            ),
            Text(" = "),
            RaiseToPower(
              char: "a",
              power: 2,
            ),
            
            RaiseToPower(
              char: " - b",
              power: 2,
            ),
          ],
        )),
  },
  "Indices": {
    0: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "x",
              power: "m",
            ),
            RaiseToPower(
              char: ".x",
              power: "n",
            ),
            RaiseToPower(
              char: " = x",
              power: "m + n",
            ),
          ],
        )),
    1: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "x",
              power: "m",
            ),
            RaiseToPower(
              char: "/x",
              power: "n",
            ),
            RaiseToPower(
              char: " = x",
              power: "m - n",
            ),
          ],
        )),
    2: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            Text("1/"),
            RaiseToPower(
              char: "x",
              power: "n",
            ),
            RaiseToPower(
              char: " = x",
              power: "-n",
            ),
          ],
        )),
    3: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "(x",
              power: "m",
            ),
            RaiseToPower(
              char: ")",
              power: "n",
            ),
            RaiseToPower(
              char: " = x",
              power: "mn",
            ),
          ],
        )),
    4: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "(any)",
              power: "0",
            ),
            Text(
              " = 1",
            ),
          ],
        )),
  },
  "Trignometry": {
    0: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
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
              power: 2,
            ),
            Text("θ"),
          ],
        )),
    3: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(children: [
          Text("tanθ.cotθ=1"),
        ])),
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
              power: -1,
            ),
            Text("θ = π/2"),
          ],
        )),
  },
  "Derivatives": {
    0: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "d/dx(x",
              power: "n",
            ),
            RaiseToPower(
              char: ") = nx",
              power: "n-1",
            ),
          ],
        )),
    1: Text(
      "d/dx(fg) = fg'+gf'",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    2: Text(
      "d/dx(lnx) = 1/x",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    3: Text(
      "d/dx(sinx) = cosx",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    4: Text(
      "d/dx(cosx) = -sinx",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    5: Text(
      "d/dx(tanx) = secx.secx",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    6: Text(
      "d/dx(secx) = secx.tanx",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    7: Text(
      "d/dx(cosecx) = -cosecx.cotx",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
  },
  "Integration": {
    0: Text(
      "∫sinx dx = – cosx + C",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    1: Text(
      "∫cosx dx = sinx + C",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    2: Text(
      "∫(secx.tanx) dx = sec x + C",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    3: Text(
      "∫(cosecx.cotx) dx = – cosecx + C",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    5: Text(
      "∫(1/x) dx = log|x| + C",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    4: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "∫x",
              power: "n",
            ),
            Text(" dx = "),
            RaiseToPower(
              char: "x",
              power: "n+1",
            ),
            Text("/ (n+1) + C")
          ],
        )),
    6: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "∫e",
              power: "x",
            ),
            Text(" dx = "),
            RaiseToPower(
              char: "e",
              power: "x",
            ),
            Text(" + C")
          ],
        )),
    7: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "∫a",
              power: "x",
            ),
            Text(" dx = "),
            RaiseToPower(
              char: "(a",
              power: "x",
            ),
            Text("/ log|a|) + C")
          ],
        )),
  },
  "Logarithms": {
    0: Text(
      "log(xy) = log(x)+log(y)",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    1: Text(
      "log(x/y) = log(x)−log(y)",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    2: Text(
      "log(e) = 1",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    3: Text(
      "log(1) = 0",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    4: Text(
      "log(1/x) = −log(x)",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    5: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 20),
        child: Row(
          children: [
            RaiseToPower(
              char: "log(x",
              power: "y",
            ),
            Text(") = ylog(x)"),
          ],
        )),
  },
};

class RaiseToPower extends StatelessWidget {
  RaiseToPower({Key key, this.char, this.power}) : super(key: key);
  final String char;
  final power;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: char,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        WidgetSpan(
          child: Transform.translate(
            offset: const Offset(1, -4),
            child:
                //superscript is usually smaller in size
                Text("$power",
                    textScaleFactor: 0.7,
                    style: TextStyle(
                      fontSize: 20,
                      /* fontFeatures: [
                        FontFeature.enable('sups'),
                      ], */
                    )),
          ),
        ),
      ]),
    );
  }
}
