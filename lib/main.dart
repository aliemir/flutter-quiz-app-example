import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  var _score = 0;
  var _questionIndex = 0;
  final questions = [
    {
      'questionText': 'Whats your favorite color ?',
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 6,
        },
        {
          'text': 'Green',
          'score': 3,
        },
        {
          'text': 'White',
          'score': 0,
        },
      ],
    },
    {
      'questionText': 'Whats your favorite animal ?',
      'answers': [
        {
          'text': 'Snake',
          'score': 10,
        },
        {
          'text': 'Fish',
          'score': 6,
        },
        {
          'text': 'Dog',
          'score': 3,
        },
        {
          'text': 'Cat',
          'score': 0,
        },
      ],
    },
    {
      'questionText': 'Whats your favorite number ?',
      'answers': [
        {
          'text': 'Ten',
          'score': 10,
        },
        {
          'text': 'Six',
          'score': 6,
        },
        {
          'text': 'Three',
          'score': 3,
        },
        {
          'text': 'Zero',
          'score': 0,
        },
      ],
    },
  ];

  void _answerQuestion(int answerScore) {
    setState(() {
      _score += answerScore;
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _score = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFFFFFF), Color(0xFF0058AB)],
              stops: [0.0, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: _questionIndex < questions.length
              ? Quiz(
                  question: questions[_questionIndex],
                  onPressed: _answerQuestion,
                )
              : Result(
                  score: _score,
                  resetHandler: _resetQuiz,
                ),
        ),
      ),
    );
  }
}
