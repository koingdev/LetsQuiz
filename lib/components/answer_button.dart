import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final String title;
  final Color color;
  final VoidCallback onTap;

  AnswerButton({this.title, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Container(
              child: Text(title, style: TextStyle(fontSize: 30, fontFamily: 'Helvetica-Neue', color: Colors.white)),
            ),
          ),
        ),
      )
    );
  }

}