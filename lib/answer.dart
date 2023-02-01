import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer(
      {required this.selectHandler, required this.questionAnswer, super.key});
  VoidCallback selectHandler;
  String questionAnswer;

  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(),
        onPressed: selectHandler,
        child: Text(questionAnswer),
      ),
    );
  }
}
