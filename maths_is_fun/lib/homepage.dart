import 'package:flutter/material.dart';
import 'package:maths_is_fun/calculator.dart';

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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(first);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                        Icons.calculate,
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
                        Icons.calculate,
                        color: third.hasFocus ? Colors.purple : Colors.amber,
                      ),
                      splashRadius: 0.1,
                    ),
                  ]),
              first.hasFocus ? Calculator() : Container()
            ]),
      ),
    );
  }
}
