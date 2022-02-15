// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _answeredQuestion;
  final String answerText;

  Answer(this._answeredQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity, // 100%
        padding: EdgeInsets.only(
          right: 50,
          left: 50,
        ),
        /* REVIEW RaisedButton (OLD) */
        child: ElevatedButton(
          child: Text(
            answerText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: _answeredQuestion,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Colors.blue), // LIKE AN ENUM
            foregroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
          ),
          /* REVIEW ANOTHER WAY TO GIVE STYLES TO THIS BUTTTON */
          // style: ElevatedButton.styleFrom(
          //   primary: Colors.orange, // background
          //   onPrimary: Colors.white, //
          // )),
        ));
  }
}
