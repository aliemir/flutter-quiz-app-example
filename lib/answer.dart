import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function onPressed;
  Answer({this.text, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
