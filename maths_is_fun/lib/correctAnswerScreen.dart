import 'package:flutter/material.dart';
import 'package:maths_is_fun/homepage.dart';
import 'package:maths_is_fun/quizDisplayScreen.dart';

class CorrectAnswerScreen extends StatefulWidget {
  CorrectAnswerScreen({this.level, Key key}) : super(key: key);
  final int level;
  @override
  _CorrectAnswerScreenState createState() => _CorrectAnswerScreenState();
}

class _CorrectAnswerScreenState extends State<CorrectAnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check,
                  color: Colors.black,
                  size: 200,
                ),
                Text(
                  "CORRECT",
                  style: TextStyle(fontSize: 20),
                ),
                Divider(height: 5, color: Colors.white),
                widget.level != 5 ? Text("Referring to Next Level!") : Text(""),
                Divider(height: 30, color: Colors.white),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => widget.level != 5
                                ? QuizDisplayScreen(level: widget.level + 1)
                                : HomePage()),
                        (route) => false);
                  },
                  child: widget.level != 5
                      ? Text("Next Level")
                      : Text("Back To Home Page"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
