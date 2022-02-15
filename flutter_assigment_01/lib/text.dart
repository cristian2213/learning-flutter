import 'package:flutter/material.dart';

class TextW extends StatelessWidget {
  final String defaultText;

  TextW({required this.defaultText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        bottom: 30,
      ),
      child: Text(
        defaultText,
        style: TextStyle(
          color: Colors.pink,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
