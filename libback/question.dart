import 'package:flutter/material.dart';

class Question extends StatelessWidget {
 final String question;

  Question(this.question); //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 21,
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
    );
  }
}
