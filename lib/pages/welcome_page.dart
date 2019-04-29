import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './quiz_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // hide status bar
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Material(
      color: Colors.pink[200],
      child: InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => QuizPage())),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Let's Quiz", style: TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Futura')),
            Text("Tap to start", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'Futura')),
          ],
        )
      ),
    );
  }
}