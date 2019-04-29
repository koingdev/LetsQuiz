import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './quiz_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // hide status bar
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.red[100],
              Colors.red[200],
              Colors.red[400]
            ]
          )
        ),
        child: InkWell(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => QuizPage())),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Let's Quiz", style: TextStyle(fontSize: 80, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Futura')),
              Text("Tap to start", style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Futura')),
            ],
          )
        ),
      ),
    );
  }
}