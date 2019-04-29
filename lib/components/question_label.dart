import 'package:flutter/material.dart';

class QuestionLabel extends StatefulWidget {

  final String questionTitle;

  QuestionLabel(this.questionTitle);

  @override
  _QuestionLabelState createState() => _QuestionLabelState();
}

class _QuestionLabelState extends State<QuestionLabel> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: Center(
          child: Container(
            child: Text(widget.questionTitle, style: TextStyle(fontSize: 40, fontFamily: 'Helvetica-Neue')),
          ),
        ),
      ),
    );
  }
  
}