// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

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

  void answeredQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Question 1', 'Question 2', 'Question 3', 'Question 4'];
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
        body: Column(children: <Widget>[
          Text(
            questions[_questionIndex],
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24.5,
            ),
          ),
          ElevatedButton(
            onPressed: answeredQuestion,
            child: Text(
              'Click me 1',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: answeredQuestion,
            child: Text(
              'Click me 2',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ]),
        backgroundColor: Color.fromARGB(113, 87, 126, 255),
      ),
    );
  }
}
