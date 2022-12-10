import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerquestions;
  final List<Map<String, Object>> questions;
  int questionindex;
  Quiz(this.questions, this.answerquestions, this.questionindex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionindex]['questionText'] as String),
        ...(questions[questionindex]['answers'] as List<String>).map((answer) {
          return Answer(
              answerquestions, answer);
        }).toList()
      ],
    );
  }
}
