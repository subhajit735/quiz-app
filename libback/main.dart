import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /////////////////////////
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 10},
        {'text': 'White', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 10},
        {'text': 'Elephant', 'score': 10},
        {'text': 'Lion', 'score': 10},
      ],
    },
    {
      'questionText': 'Who\'s your favorite alphabet?',
      'answers': [
        {'text': 'A', 'score': 10},
        {'text': 'B', 'score': 10},
        {'text': 'C', 'score': 10},
        {'text': 'D', 'score': 10},
      ],
    },
  ];
  ///////////////////////////////
  var _questionindex = 0;
  var _totalscore = 0;
  int score = 0;
  ///////////////////////////////
  void _answerQuestion() {
    _totalscore += score;
    setState(() {
      _questionindex = _questionindex + 1;
    });
    if (_questionindex < _questions.length) {
      print('We have more question');
    }

    print(_questionindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ APP"),
        ),
        body: _questionindex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionindex)
            : result(),
      ),
    );
  }
}
