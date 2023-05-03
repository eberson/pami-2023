import 'package:quiz/domain/answer.dart';
import 'package:quiz/domain/question.dart';

List<Question> loadQuestions(){
  return <Question>[
    Question(
      text: "Qual a cor predominante do tubarão branco?", 
      a: Answer(text: "branco", correct: false), 
      b: Answer(text: "cinza", correct: true), 
      c: Answer(text: "preto", correct: false), 
      d: Answer(text: "azul", correct: false), 
      e: Answer(text: "rosa", correct: false),
    ),
    Question(
      text: "Quanto é 3+3*3?", 
      a: Answer(text: "18", correct: false), 
      b: Answer(text: "15", correct: false), 
      c: Answer(text: "13", correct: false), 
      d: Answer(text: "12", correct: true), 
      e: Answer(text: "10", correct: false),
    ),
  ];

}