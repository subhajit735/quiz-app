import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecthandler;
  final String answertext;
  Answer(this.selecthandler,this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selecthandler,
        child: Text(answertext),
        color: Colors.blue,
        textColor: Colors.white,
      ),
      margin: EdgeInsets.all(20),
    );
  }
}
