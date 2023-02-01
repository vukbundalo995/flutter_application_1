import 'package:flutter/material.dart';

import 'package:flutter_application_1/question.dart';
import 'package:flutter_application_1/answer.dart';

class Quiz extends StatelessWidget {
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex,
      super.key});

  Function answerQuestion;
  List questions;
  int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Question(
            questionText: questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              selectHandler: () => answerQuestion(answer['score']),
              questionAnswer: answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
