import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

//Automatically executes
// all about widget's
// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); // _ turns it into a private state
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _ansQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_ansQuestion),
            Answer(_ansQuestion),
            Answer(_ansQuestion),
          ],
        ),
      ),
    );
  } //build
}//class