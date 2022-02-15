import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result({required this.resultScore, required this.resetQuiz});

  // GETTER
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 9) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?';
    } else {
      resultText = 'You are so good!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),

          /* REVIEW FlatButton (OLD) */
          TextButton(
            onPressed: resetQuiz,
            child: Text(
              'Restart Quiz!',
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            /* REVIEW ANOTHER WAY TO GIVE STYLES TO THIS BUTTTON */
            // style: TextButton.styleFrom(
            //   primary: Colors.orange,
            // ),
          )
        ],
      ),
    );
  }
}
