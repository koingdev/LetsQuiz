import 'package:flutter/material.dart';
import 'package:lets_quiz/pages/quiz_page/quiz_page_logic.dart';
import 'package:lets_quiz/components/answer_button.dart';
import 'package:lets_quiz/components/question_label.dart';
import 'package:lets_quiz/models/quiz.dart';
import 'package:lets_quiz/models/question.dart';
import 'package:lets_quiz/pages/score_page.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  QuizPageLogic logic;

  @override
  void initState() {
    super.initState();
    logic = QuizPageLogic(quiz: Quiz.mockData());
    logic.didFinishAnswer = () {
      setState(() {
        Question nextQuestion = logic.nextQuestion;
        // All questions answered ?
        if (nextQuestion == null) {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ScorePage(logic.score, logic.totalQuestion)));
          return;
        }
        logic.currentQuestion = nextQuestion;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          QuestionLabel(logic.currentQuestion.title),
          Expanded(
            child: Row(
              children: <Widget>[
                AnswerButton(title: "TRUE", color: Colors.green[300], onTap: () => logic.answer(true)),
                AnswerButton(title: "FALSE", color: Colors.red[300], onTap: () => logic.answer(false))
              ],
            ),
          )
        ],
      ),
    );
  }
}
