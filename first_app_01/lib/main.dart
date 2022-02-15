// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); // THIS A PRIVETE CLASS
  }
}

// THE SAME NAME OF THE CLASS BUT WITH THE PREFIX TO THE END OF "State" AND IS TO IMPORTANT EXTENDS FROM THE MYAPP CLASS, BECAUSE IT IS THE LINK BETWEEN THE STATE AND THE WIDGET.
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0; // PRIVATE PROPERTY
  var _totalScore = 0;
  //const questionIndex = const [];
  final buttonOptions = ['blue', 'red', 'green', 'white'];
  final random = Random();
  final List<Map<String, dynamic>> _questions = [];

  _MyAppState() {
    for (var i = 1; i < 4; i++) {
      _questions.add({
        'questionText': "What's your favorite color $i?",
        'answers': [
          {
            'text': buttonOptions[random.nextInt(buttonOptions.length)],
            'score': random.nextInt(16),
          },
          {
            'text': buttonOptions[random.nextInt(buttonOptions.length)],
            'score': random.nextInt(16),
          },
          {
            'text': buttonOptions[random.nextInt(buttonOptions.length)],
            'score': random.nextInt(16),
          },
          {
            'text': buttonOptions[random.nextInt(buttonOptions.length)],
            'score': random.nextInt(16),
          },
        ]
      });
    }
  }

  // LIFTING THE STATE UP
  void _answeredQuestion(int score) {
    _totalScore += score;
    // if (_questionIndex < _questions.length) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // NOTE ALL EXECUTED HERE IS RE-BUILT EACH TIME THAT THE STATE CHANGES
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My App Bar',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answeredQuestion: _answeredQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(resultScore: _totalScore, resetQuiz: _resetQuiz),
        backgroundColor: Color.fromARGB(113, 87, 126, 255),
      ),
    );
  }
}
