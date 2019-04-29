import 'package:flutter/material.dart';
import './pages/welcome_page.dart';

void main() {
  runApp(MaterialApp(
    home: WelcomePage(),
    theme: ThemeData.light(),
    debugShowCheckedModeBanner: false,
  ));
}
