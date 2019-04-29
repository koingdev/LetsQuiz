import 'package:flutter/material.dart';
import '../components/answer_button.dart';
import '../components/question_label.dart';
import '../models/quiz.dart';
import '../models/question.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  Quiz quiz;
  Question currentQuestion;  

  @override
  void initState() {
    super.initState();
    quiz = Quiz.mockData();
    currentQuestion = quiz.nextQuestion();
  }

  void handeAnswer(bool answer) {
    bool isCorrect = answer == currentQuestion.answer;
    quiz.answer(isCorrect);
    // next question ?
    setState(() {
      Question nextQuestion = quiz.nextQuestion();
      if (nextQuestion == null) {
        print("Should go to score page");
        return;
      }
      currentQuestion = nextQuestion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          QuestionLabel(currentQuestion.title),
          Expanded(
            child: Row(
              children: <Widget>[
                AnswerButton(title: "TRUE", color: Colors.green[300], onTap: () => handeAnswer(true)),
                AnswerButton(title: "FALSE", color: Colors.red[300], onTap: () => handeAnswer(false))
              ],
            ),
          )
        ],
      ),
    );
  }
}
