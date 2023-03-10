// // ignore_for_file: avoid_print

// import 'package:flutter/material.dart';
// import 'package:quiz_temlplate/models/question.dart';

// import '../app_controller.dart';
// import '../constants.dart';
// import 'oprions.dart';
// // import 'package:flutter/services.dart';

// // import 'answer_widget.dart';
// // import 'question_widget.dart';
// // import 'quiz_brain.dart';

// QuizBrian quizBrian = QuizBrian();

// class QuizCard extends StatefulWidget {
//   const QuizCard({super.key, required quizCard});

//   @override
//   State<QuizCard> createState() => _QuizCardState();
// }

// class _QuizCardState extends State<QuizCard> {
//   bool _isSubmitPressed = false;

// //SUBMIT ***/
//   void _checkAnswer() {
//     setState(() {
//       _isSubmitPressed = true;
//       print('_isPressed: $_isSubmitPressed');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         side: const BorderSide(color: kGold),
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       // key: ,
//       // color: Colors.purple,
//       surfaceTintColor: Colors.purple,
//       margin: const EdgeInsets.all(16),
//       elevation: 1,
//       child: Padding(
//         padding: const EdgeInsets.all(4),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Question(quizBrian.getQuestionText()!),
//             const SizedBox(height: 40),

//             /*** OPTIONS ***/
//             ...List.generate(quizBrian.getOptionsList()!.length, (index) {
//               return Answer(
//                 answerText: quizBrian.getOptionsList()![index],
//                 id: index,
//                 answer: quizBrian.getCorrectAnswer()!,
//                 isSubmitPressed: _isSubmitPressed,
//               );
//             }),

//             /**** MODELL OF OPTIONS LIST */
//             // ...List.generate(
//             // question.options.length,
//             // (index) => Option(
//             //   index: index,
//             //   text: question.options[index],
//             //   press: () => controller.checkAns(question, index),
//             // ),
//             /**** */
// /*** SUBMIT */
//             // onPressed: _checkAnswer,
//             /*** SUBMIT */
//             ElevatedButton(
//               onPressed: _checkAnswer,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.purple,
//                 elevation: 0,
//               ),
//               child: const Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
