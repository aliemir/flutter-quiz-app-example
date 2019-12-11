import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final question;
  final Function onPressed;

  Quiz({this.question, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(
            questionText: question['questionText'],
          ),
          ...(question['answers'] as List).map((answer) {
            return new Answer(
              text: answer['text'],
              onPressed: () {
                onPressed(answer['score']);
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}
