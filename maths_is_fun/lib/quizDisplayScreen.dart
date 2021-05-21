import 'package:flutter/material.dart';
import 'package:maths_is_fun/globals.dart' as globals;

class QuizDisplayScreen extends StatefulWidget {
  QuizDisplayScreen({this.level, Key key}) : super(key: key);
  final int level;
  @override
  _QuizDisplayScreenState createState() => _QuizDisplayScreenState();
}

Map quiz = {
  1: Column(
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
  )
};

TextEditingController answerController = new TextEditingController();

class _QuizDisplayScreenState extends State<QuizDisplayScreen> {
  @override
  Widget build(BuildContext context) {
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
              child: quiz[widget.level],
            ),
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
                            enabled: false,
                            readOnly: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
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
                        onPressed: () {},
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
                            child: Text("$index"))),
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
                            child: Text("${index + 5}"))),
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
