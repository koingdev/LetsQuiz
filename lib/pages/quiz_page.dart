import 'package:flutter/material.dart';
import '../components/answer_button.dart';
import '../components/question_label.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          QuestionLabel("Question???"),
          Expanded(
            child: Row(
              children: <Widget>[
                AnswerButton(title: "TRUE", color: Colors.green[300], onTap: () => print("TRUE")),
                AnswerButton(title: "FALSE", color: Colors.red[300], onTap: () => print("FALSE"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
