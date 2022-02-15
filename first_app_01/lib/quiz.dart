import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function answeredQuestion;
  final List questions;
  final int questionIndex;

  Quiz(
      {required this.answeredQuestion,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(
        questions[questionIndex]['questionText'],
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answere) {
        return Answer(() => answeredQuestion(answere['score']),
            answere['text'] as String);
      }).toList(),
    ]);
  }
}
