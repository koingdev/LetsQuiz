import './question.dart';

class Quiz {

  List<Question> questions;
  int _score = 0;
  int _currentIndex = -1;
  int get totalQuestions => questions.length;

  Quiz(this.questions) {
    questions.shuffle();
  }

  Question nextQuestion() {
    _currentIndex++;
    if (_currentIndex >= totalQuestions) return null;
    return questions[_currentIndex];
  }

  void answer(bool isCorrect) {
    if (isCorrect) _score++;
  }

  static Quiz mockData() {
    return Quiz([
      Question(title: "You are fool 🤪", answer: true),
      Question(title: "Sun is cool ☀️", answer: false),
      Question(title: "BlackPink is cute 😍", answer: true)
    ]);
  }

}