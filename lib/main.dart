import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;
  final questions = [
    {
      'questionText': 'Whats your favorite color ?',
      'answers': [
        'Black',
        'Red',
        'Green',
        'White',
      ],
    },
    {
      'questionText': 'Whats your favorite animal ?',
      'answers': [
        'Rabbit',
        'Cat',
        'Dog',
        'Fish',
      ],
    },
    {
      'questionText': 'Whats your favorite number ?',
      'answers': [
        'One',
        'Two',
        'Three',
        'Four',
      ],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer chosen');
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
          child: Column(
            children: <Widget>[
              Question(
                questionText: questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return new Answer(
                  text: answer,
                  onPressed: _answerQuestion,
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
