import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({required this.totalScore, required this.resetQuiz, super.key});
  final totalScore;
  final VoidCallback resetQuiz;

  String get resultText {
    if (totalScore < 7) {
      return 'You are a gentle soul!';
    } else if (totalScore < 14) {
      return 'You are stable and happy person!';
    } else if (totalScore < 21) {
      return 'You are strong and independent person!';
    } else {
      return 'You are prone to conflict and highly phylosopical person!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 400,
            child: Text(
              'You did it! You scored ${totalScore.round()}  out of 30 points! Congratulations! $resultText',
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text('Reset Quiz'),
          )
        ],
      ),
    );
  }
}
