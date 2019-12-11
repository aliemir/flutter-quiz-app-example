import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resetHandler;
  final score;

  Result({this.score, this.resetHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              bottom: 30.0,
            ),
            child: Text(
              'Wooo!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 30.0,
            ),
            child: Text(
              'Your score is ' + score.toString() + '!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.red,
            child: Text('Reset Quiz'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
