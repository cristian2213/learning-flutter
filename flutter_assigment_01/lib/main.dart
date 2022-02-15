import 'package:flutter/material.dart';
import 'dart:math';
import './textControl.dart';
import './text.dart';

void main(List<String> args) => runApp(App());

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var _defaultText = 'Text by default.';
  final random = Random();

  void _changeText() {
    const List<String> descriptions = [
      'Random text 1',
      'Random text 2',
      'Random text 3',
      'Random text 4'
    ];

    setState(() {
      _defaultText = descriptions[random.nextInt(descriptions.length)];
    });
  }

  void _resetText() {
    setState(() {
      _defaultText = 'Text by default.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App Bar'),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                TextW(defaultText: _defaultText),
                TextControl(
                  onChageText: _changeText,
                  onReset: _resetText,
                ),
              ],
            ),
          )),
    );
  }
}
