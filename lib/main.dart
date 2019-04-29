import 'package:flutter/material.dart';
import './pages/welcome_page.dart';
import './pages/quiz_page.dart';

void main() {
  runApp(MaterialApp(
    home: QuizPage(),
    debugShowCheckedModeBanner: false,
  ));
}
