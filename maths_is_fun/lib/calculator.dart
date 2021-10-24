import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:maths_is_fun/globals.dart' as globals;

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

extension strToInt on String {
  int toInt() => double.parse(this).toInt();
}

class _CalculatorState extends State<Calculator> {
  @override
  void initState() {
    super.initState();
  }

  String displayedVal = "0";
  bool operPressed = false;
  bool equalPressed = false;
  Map<dynamic, dynamic> values = {
    Text("AC"): Colors.orange,
    Icon(
      Icons.backspace_outlined,
      color: Colors.orange,
    ): Colors.orange,
    Text(
      "%",
    ): Colors.orange,
    Text("÷"): Colors.orange,
    Text("7"): Colors.white,
    Text("8"): Colors.white,
    Text("9"): Colors.white,
    Text("×"): Colors.orange,
    Text("4"): Colors.white,
    Text("5"): Colors.white,
    Text("6"): Colors.white,
    Text("-"): Colors.orange,
    Text("1"): Colors.white,
    Text("2"): Colors.white,
    Text("3"): Colors.white,
    Text("+"): Colors.orange,
    Text(""): Colors.black,
    /* Icon(
      Icons.expand,
      color: Colors.orange,
    ): Colors.orange, */
    Text("0"): Colors.white,
    Text("."): Colors.white,
    Text("="): Colors.white,
  };
  @override
  Widget build(BuildContext context) {
    
    if (displayedVal.endsWith(".0")) {
      displayedVal = displayedVal.toInt().toString();
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Container(height: (globals.height) * 0.275),
        Container(
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              "$displayedVal",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Divider(
          thickness: 30,
          // color: Colors.white,
        ),
        Container(
            height: (globals.height) * 0.5,
            alignment: Alignment.bottomCenter,
            child: GridView.builder(
              // shrinkWrap: true,
              itemCount: values.length,

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: 50,
                mainAxisSpacing: 30,
                crossAxisSpacing: 1.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor:
                      index == values.length - 1 ? Colors.orange : Colors.black,
                  // horizontalTitleGap: 3,

                  shape: CircleBorder(
                      side: BorderSide(
                    width: 2,
                  )),

                  title: DefaultTextStyle(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: values.values.toList()[index],
                        fontWeight: FontWeight.bold,
                        fontSize: 22.5,
                      ),
                      child: values.keys.toList()[index]),
                  /* Text(
                    "${values.keys.toList()[index]}",
                    style: TextStyle(
                        color: values.values.toList()[index],
                        fontWeight: FontWeight.bold,
                        fontSize: 22.5), */
                  // textAlign: TextAlign.center,

                  onTap: () {
                    setState(() {
                      if (displayedVal == "0" || equalPressed) {
                        displayedVal = "";
                        equalPressed = false;
                      }
                      dynamic tappedVal = values.keys.toList()[index];
                      if (tappedVal.runtimeType == Icon) {
                        if (index == 1) {
                          displayedVal =
                              displayedVal.replaceAll(RegExp(r'.$'), "");
                        } else {}
                      } else if (tappedVal.data == "") {
                        displayedVal = displayedVal;
                      } else if (tappedVal.data == "=") {
                        equalPressed = true;
                        Parser p = new Parser();
                        String calcVal =
                            displayedVal.replaceAll(RegExp(r'÷'), '/');
                        calcVal = calcVal.replaceAll(RegExp(r'×'), '*');

                        Expression exp = p.parse(calcVal);

                        String result =
                            exp.evaluate(EvaluationType.REAL, null).toString();

                        displayedVal = result;
                      } else if (tappedVal.data == "AC") {
                        displayedVal = "0";
                      } else if (tappedVal.data == "%") {
                        displayedVal =
                            (double.parse(displayedVal) / 100).toString();
                      } else {
                        displayedVal += values.keys.toList()[index].data;
                      }
                    });
                  },
                );
              },
            )),
      ],
    );
  }
}
