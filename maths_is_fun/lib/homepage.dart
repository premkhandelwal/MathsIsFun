import 'package:flutter/material.dart';
import 'package:maths_is_fun/calculator.dart';
import 'package:maths_is_fun/formulaMainPage.dart';
import 'globals.dart' as globals;

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FocusNode first = new FocusNode();
  FocusNode second = new FocusNode();
  FocusNode third = new FocusNode();
  bool isFirstRun = false;
  @override
  void initState() {
    isFirstRun = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isFirstRun) {
      FocusScope.of(context).requestFocus(first);
      isFirstRun = false;
    }
    var size = MediaQuery.of(context).size;
    globals.height = size.height - kToolbarHeight;
    globals.width = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              autofocus: true,
              onPressed: () {
                setState(() {
                  FocusScope.of(context).requestFocus(first);
                });
              },
              focusNode: first,
              icon: Icon(
                Icons.calculate,
                color: first.hasFocus ? Colors.purple : Colors.amber,
              ),
              splashRadius: 0.1,
            ),
            IconButton(
              // splashColor: Colors.transparent,
              focusNode: second,
              // focusColor: Colors.transparent,
              // hoverColor: Colors.transparent,
              splashRadius: 0.1,

              onPressed: () {
                setState(() {
                  FocusScope.of(context).requestFocus(second);
                });
              },
              icon: Icon(
                Icons.pie_chart,
                color: second.hasFocus ? Colors.purple : Colors.amber,
              ),
            ),
            IconButton(
              focusNode: third,
              onPressed: () {
                setState(() {
                  FocusScope.of(context).requestFocus(third);
                });
              },
              icon: Icon(
                Icons.games,
                color: third.hasFocus ? Colors.purple : Colors.amber,
              ),
              splashRadius: 0.1,
            ),
          ]),),
      body: Container(
        // padding: EdgeInsets.all(20),
        child: first.hasFocus ? Calculator() :second.hasFocus ? FormulaPage() : Container(),
      ),
    );
  }
}
