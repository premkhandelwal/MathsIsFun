import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maths_is_fun/correctAnswerScreen.dart';
import 'package:maths_is_fun/globals.dart' as globals;

class QuizDisplayScreen extends StatefulWidget {
  QuizDisplayScreen({this.level, Key key}) : super(key: key);
  final int level;
  @override
  _QuizDisplayScreenState createState() => _QuizDisplayScreenState();
}

TextEditingController answerController = new TextEditingController();
bool isWrongAnswer = false;

class _QuizDisplayScreenState extends State<QuizDisplayScreen> {
  @override
  void initState() {
    super.initState();
    isWrongAnswer = false;
    answerController.clear();
  }

  @override
  Widget build(BuildContext context) {
    Map quiz = {
      1: {Center(child: Text("1, 5, 25, ?")): "125"},
      2: {
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("2 = 6"),
            Divider(height: 10),
            Text("4 = 20"),
            Divider(height: 10),
            Text("5 = 30"),
            Divider(height: 10),
            Text("7 = ?"),
          ],
        ): "56"
      },
      5: {
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(
                  color: Colors.white,
                ),
                defaultColumnWidth: FixedColumnWidth(50),
                children: [
                  TableRow(children: [
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                    ),
                  ]),
                ],
              ),
              Text(
                "   =   5",
              )
            ],
          ),
          Divider(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(
                  color: Colors.white,
                ),
                defaultColumnWidth: FixedColumnWidth(50),
                children: [
                  TableRow(children: [
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                    ),
                    Container(
                      height: 50,
                    ),
                  ])
                ],
              ),
              Text("     =   ?")
            ],
          ),
        ]): "14"
      },
      3: {
        Column(
          children: [
            Divider(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTriangle(val1: 2, val2: 3, val3: 6),
                Divider(),
                CustomTriangle(val1: 5, val2: 4, val3: 20),
              ],
            ),
            Divider(height: 60),
            CustomTriangle(val1: 15, val2: 3, val3: "?"),
          ],
        ): "45"
      },
      4: {
        Center(
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder.all(
              color: Colors.white,
            ),
            defaultColumnWidth: FixedColumnWidth(80),
            children: [
              TableRow(children: [
                Container(height: 70, child: Center(child: Text("12"))),
                Container(height: 70, child: Center(child: Text("108"))),
                Container(height: 70, child: Center(child: Text("60"))),
              ]),
              TableRow(children: [
                Container(height: 70, child: Center(child: Text("36"))),
                Container(height: 70, child: Center(child: Text("?"))),
                Container(height: 70, child: Center(child: Text("48"))),
              ]),
              TableRow(children: [
                Container(height: 70, child: Center(child: Text("24"))),
                Container(height: 70, child: Center(child: Text("144"))),
                Container(height: 70, child: Center(child: Text("96"))),
              ])
            ],
          ),
        ): "72"
      }
    };
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Level ${widget.level}"),
        centerTitle: true,
      ),
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 25),
        child: Column(
          children: [
            Container(
              // alignment: Alignment.center,
              width: globals.width * 2,
              height: globals.height * 0.7,
              child: quiz[widget.level].keys.first,
            ),
            isWrongAnswer
                ? FutureBuilder(
                    future: Future.delayed(Duration(seconds: 3)),
                    builder: (c, s) {
                      isWrongAnswer = false;
                      return s.connectionState != ConnectionState.done
                          ? Text(
                              'Wrong Answer. Try again!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          : Text('');
                    })
                : Container(),
            // }); Text("Wrong Answer. Try Again") : Container(),
            Divider(
              color: Colors.grey,
            ),
            Container(
              // padding: EdgeInsets.only(left: 05),

              alignment: Alignment.bottomCenter,
              // height: 20,
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: 250,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: TextFormField(
                            expands: false,
                            // enabled: false,
                            readOnly: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.black,
                              hintText: 'Answer',
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              suffixIcon: IconButton(
                                // Icon to
                                icon: Icon(
                                  Icons.clear,
                                  color: Colors.white,
                                ), // clear text
                                onPressed: () {
                                  answerController.clear();
                                },
                              ),
                            ),
                            controller: answerController,
                          ),
                        ),
                      ),
                      Divider(
                        indent: 15,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (quiz[widget.level].values.first ==
                              answerController.text) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => CorrectAnswerScreen(
                                          level: widget.level,
                                        )),
                                (route) => false);
                          } else {
                            setState(() {
                              isWrongAnswer = true;
                            });
                          }
                        },
                        child: Text("ENTER"),
                        style: TextButton.styleFrom(
                          side: BorderSide(color: Colors.grey),
                          backgroundColor: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: List.generate(
                        5,
                        (index) => Container(
                            width: globals.width * 0.4,
                            padding: EdgeInsets.only(left: 25, top: 25),
                            child: GestureDetector(
                                onTap: () {
                                  answerController.text += index.toString();
                                },
                                child: Text("$index")))),
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    children: List.generate(
                        5,
                        (index) => Container(
                            width: globals.width * 0.4,
                            padding: EdgeInsets.only(left: 25, top: 15),
                            child: GestureDetector(
                                onTap: () {
                                  answerController.text +=
                                      (index + 5).toString();
                                },
                                child: Text("${index + 5}")))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTriangle extends StatelessWidget {
  CustomTriangle({this.key, this.val1, this.val2, this.val3}) : super(key: key);
  final Key key;
  final val1;
  final val2;
  final val3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("$val1                  $val2"),
        ClipPath(
          clipper: CustomTriangleClipper(),
          child: Container(
            alignment: Alignment.centerLeft,
            width: 100,
            height: 100,
            decoration: BoxDecoration(color: Colors.grey),
          ),
        ),
        Text("$val3", textAlign: TextAlign.center),
      ],
    );
  }
}

class CustomTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(45, 90);
    path.lineTo(45, 90);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
