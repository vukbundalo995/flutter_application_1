import 'package:flutter/material.dart';

import 'package:flutter_application_1/quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  double _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 10.00},
        {'text': 'Blue', 'score': 6.66},
        {'text': 'Red', 'score': 3.33},
        {'text': 'White', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal??',
      'answer': [
        {'text': 'Orca', 'score': 10.00},
        {'text': 'Wolf', 'score': 6.66},
        {'text': 'Fox', 'score': 3.33},
        {'text': 'Duck', 'score': 0.00},
      ],
    },
    {
      'questionText': 'Who\'s your favourite instructor??',
      'answer': [
        {'text': 'Vuk', 'score': 10.00},
        {'text': 'Teodora', 'score': 6.66},
        {'text': 'Jelena', 'score': 3.33},
        {'text': 'Nevena', 'score': 0.00},
      ],
    },
  ];

  void _answerQuestion(var score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(
                totalScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
