import 'dart:ui';
import 'package:lets_quiz/models/question.dart';
import 'package:lets_quiz/models/quiz.dart';

class QuizPageLogic {

  Quiz quiz;
  Question currentQuestion;

  // Callback
  VoidCallback didFinishAnswer;

  // Getter
  Question get nextQuestion => quiz.nextQuestion();
  int get score => quiz.score;
  int get totalQuestion => quiz.totalQuestion;

  QuizPageLogic({this.quiz}) {
    currentQuestion = nextQuestion;
  }

  void answer(bool answer) {
    bool isCorrect = answer == currentQuestion.answer;
    quiz.answer(isCorrect);
    didFinishAnswer();
  }

}