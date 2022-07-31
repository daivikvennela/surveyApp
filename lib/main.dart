import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Red', 'score': 1},
      ]
    }, //Fav color
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Bat', 'score': 10},
        {'text': 'Cheetah', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Sphinx', 'score': 1},
      ]
    }, //Fav animal map
    {
      'questionText': 'What\'s favorite super hero?',
      'answers': [
        {'text': 'Batman', 'score': 10},
        {'text': 'Flash', 'score': 5},
        {'text': 'Superman', 'score': 2},
        {'text': 'Moon Knight', 'score': 1},
      ]
    }, //Fav super hero
  ];
  var _questionIndex = 0;
  var _totalscore = 0;
  void _ansQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    _totalscore += score;

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("We have no more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _ansQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  } //build
} //class
