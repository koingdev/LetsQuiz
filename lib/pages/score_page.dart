import 'package:flutter/material.dart';
import '../pages/welcome_page.dart';

class ScorePage extends StatelessWidget {

  final int score;
  final int totalQuestion;

  ScorePage(this.score, this.totalQuestion);

   @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Your Score: ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 60.0, fontFamily: 'Helvetica-Neue')),
          Text(score.toString() + "/" + totalQuestion.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 60.0, fontFamily: 'Helvetica-Neue')),
          Padding(padding: EdgeInsets.only(top: 20)),
          IconButton(
            icon: Icon(Icons.arrow_right),
            color: Colors.white,
            iconSize: 100.0,
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => WelcomePage()))
          )
        ],
      )
    );
  }
}