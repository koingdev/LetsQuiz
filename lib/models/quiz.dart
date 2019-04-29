import './question.dart';

class Quiz {

  List<Question> questions;
  int score = 0;
  int _currentIndex = -1;
  int get totalQuestion => questions.length;

  Quiz(this.questions) {
    questions.shuffle();
  }

  Question nextQuestion() {
    _currentIndex++;
    if (_currentIndex >= totalQuestion) return null;
    return questions[_currentIndex];
  }

  void answer(bool isCorrect) {
    if (isCorrect) score++;
  }

  static Quiz mockData() {
    return Quiz([
      Question(title: "You are fool 🤪", answer: true),
      Question(title: "Sun is cool ☀️", answer: false),
      Question(title: "BlackPink is cute 😍", answer: true),
      Question(title: "'1' + '1' = '11'", answer: true)
    ]);
  }

}