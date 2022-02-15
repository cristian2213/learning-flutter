import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class TextControl extends StatelessWidget {
  final VoidCallback onChageText;
  final VoidCallback onReset;

  TextControl({required this.onChageText, required this.onReset});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: 5,
          ),
          child: ElevatedButton(
            onPressed: onChageText,
            child: Text('Change Text'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
          ),
        ),
        Container(
          child: ElevatedButton(
            onPressed: onReset,
            child: Text(
              'Reset Text',
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange)),
          ),
        ),
      ],
    );
  }
}
