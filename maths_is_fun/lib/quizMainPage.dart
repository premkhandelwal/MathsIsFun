import 'package:flutter/material.dart';
import 'package:maths_is_fun/quizDisplayScreen.dart';

class QuizMainPage extends StatefulWidget {
  
  @override
  _QuizMainPageState createState() => _QuizMainPageState();
}

class _QuizMainPageState extends State<QuizMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        child: GridView.builder(
            // shrinkWrap: true,
            itemCount: 5,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 4,
              // mainAxisExtent: 50,
              mainAxisSpacing: 30,
              crossAxisSpacing: 10.0,
            ),
            padding: EdgeInsets.all(20),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      width: 2,
                    )),
                tileColor: Colors.grey,
                title: Center(
                    child: Text(
                  "Level ${index + 1}",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>QuizDisplayScreen(level:index+1)));
                },
              );
            }));
  }
}
