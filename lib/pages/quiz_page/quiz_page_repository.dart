import 'package:lets_quiz/models/quiz.dart';

abstract class QuizPageRepositoryType {
  Quiz fetchQuiz();
}

class QuizPageRepository implements QuizPageRepositoryType {

  const QuizPageRepository();

  @override
  Quiz fetchQuiz() {
    return Quiz.mockData();
  }
  
}