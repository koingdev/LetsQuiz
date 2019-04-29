import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './quiz_page/quiz_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // hide status bar
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange[100],
              Colors.orange[300],
              Colors.red[400]
            ]
          )
        ),
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => QuizPage())),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Let's Quiz", style: TextStyle(fontSize: 80, color: Colors.orange[100], fontWeight: FontWeight.bold, fontFamily: 'Futura')),
              Text("Tap to start", style: TextStyle(fontSize: 40, color: Colors.orange[200], fontWeight: FontWeight.bold, fontFamily: 'Futura')),
            ],
          )
        ),
      ),
    );
  }
}