//app_controller.dart

////We will add the final count is equal to 0. obs.
//In GetX, to make a variable observable/наблюдаемой —
//ее изменении другие части нашего приложения,
//зависящие от нее, будут уведомлены/notified.
// Для этого просто добавить .obs к переменной при initialization.
// Затем  реализуем в MyHomePageController метод increment.
/********************************************** */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  //0.obs - наблюдаемая переменная
  final count = 0.obs;

  increment() => count.value++;
  // double scaleHeight = MediaQuery.of(context).size.height / 10;
  // double scaleWidth = MediaQuery.of(context).size.width / 20;
}
/********************************************** */
// ignore_for_file: avoid_print

// class QuestionModell {
//   int? answer;
//   String? questionText;
//   List<String>? options;

//   QuestionModell({
//     required this.questionText,
//     required this.options,
//     required this.answer,
//   });

//   get length => null;
// }

// class QuizBrian {
//   int _questionNumber = 0;
//   final List<QuestionModell> _questionBank = [
//     QuestionModell(
//       questionText:
//           "Flutter is an open-source UI software development kit created by ______.",
//       options: ['Apple', 'Google', 'Facebook', 'Microsoft'],
//       answer: 1,
//     ),
//     QuestionModell(
//       questionText: "When google release Flutter.?",
//       options: ['Jun 2017', 'Jun 2018', 'May 2017', 'May 2018'],
//       answer: 2,
//     ),
//     QuestionModell(
//       questionText: "A memory location that holds a single letter or number.",
//       options: ['Double', 'Int', 'Char', 'Word'],
//       answer: 2,
//     ),
//     QuestionModell(
//       questionText: "What command do you use to output data to the screen?",
//       options: ['Cin', 'Count>>', 'Cout', 'Output>>'],
//       answer: 2,
//     ),
//   ];
//   void nextQuestion() {
//     if (_questionNumber < _questionBank.length - 1) {
//       _questionNumber++;
//     }
//     print(_questionNumber);
//     print(_questionBank.length);
//   }

//   String? getQuestionText() {
//     return _questionBank[_questionNumber].questionText;
//   }

//   List? getOptionsList() {
//     return _questionBank[_questionNumber].options;
//   }

// //method
//   int? getCorrectAnswer() => _questionBank[_questionNumber].answer;
// }
