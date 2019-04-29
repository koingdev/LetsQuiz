import 'dart:ui';
import 'package:lets_quiz/models/question.dart';
import 'package:lets_quiz/models/quiz.dart';
import 'package:lets_quiz/pages/quiz_page/quiz_page_repository.dart';

class QuizPageLogic {

  Quiz quiz;
  Question currentQuestion;

  // Getter
  Question get nextQuestion => quiz.nextQuestion();
  int get score => quiz.score;
  int get totalQuestion => quiz.totalQuestion;

  // Dependency
  QuizPageRepositoryType repository;

  // Callback
  VoidCallback didFinishAnswer;

  QuizPageLogic({this.repository = const QuizPageRepository()}) {
    quiz = repository.fetchQuiz();
    currentQuestion = nextQuestion;
  }

  void answer(bool answer) {
    bool isCorrect = answer == currentQuestion.answer;
    quiz.answer(isCorrect);
    didFinishAnswer();
  }

}