import 'package:quiz/domain/answer.dart';

class Question {
  final String text;
  final Answer a;
  final Answer b;
  final Answer c;
  final Answer d;
  final Answer e;

  Question({
    required this.text,
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.e
  });

  bool isCorrect(String answer){
    return [a, b, c, d, e].where((e) => e.text == answer).first.correct;
  }
}