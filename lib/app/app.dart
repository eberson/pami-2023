import 'package:flutter/material.dart';
import 'package:quiz/presentation/pages/home_page.dart';
import 'package:quiz/presentation/pages/question_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QUIZ',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/question": (context) => const QuestionPage(),
      },      
    );
  }
}