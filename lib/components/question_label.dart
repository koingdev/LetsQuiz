import 'package:flutter/material.dart';

class QuestionLabel extends StatefulWidget {

  final String questionTitle;

  QuestionLabel(this.questionTitle);

  @override
  _QuestionLabelState createState() => _QuestionLabelState();
}

class _QuestionLabelState extends State<QuestionLabel> with SingleTickerProviderStateMixin {

  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.bounceOut);
    _animation.addListener(() => this.setState(() => {}));
    _animationController.forward();
  }

  @override
  void didUpdateWidget(QuestionLabel oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Reset and restart animation when Question changed
    if (oldWidget.questionTitle != widget.questionTitle) {
      _animationController.reset();
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: Center(
          child: Container(
            child: Text(
              "Q: " + widget.questionTitle + "?",
              style: TextStyle(fontSize: 60 * _animation.value, fontFamily: 'Helvetica-Neue', color: Colors.blueGrey, fontWeight: FontWeight.bold)
            ),
          ),
        ),
      ),
    );
  }

}