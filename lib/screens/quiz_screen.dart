//second_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_temlplate/app_controller.dart';
import 'package:quiz_temlplate/app_routs.dart';
import 'package:quiz_temlplate/constants.dart';

import '../models/quiz_card.dart';

// QuizBrian quizBrian = QuizBrian();

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // 1. CONTROLLER создадим экземпляр HomePageController
  // final AppController controller = Get.put(AppController());

//SUBMIT ***/

  @override
  Widget build(BuildContext context) {
    // double cardHeight = MediaQuery.of(context).size.height / 10;
    // double cardWidth = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //DELETE BACK ARROW
        automaticallyImplyLeading: false,
        title: const Text("Question: 1/10"),
        centerTitle: true,
        backgroundColor: kGold,
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   backgroundColor: kGold,
      //   foregroundColor: kWhite,
      //   onPressed: () {},
      //   // controller.nextQuestion,
      //   // _checkAnswer
      //   label: const Text('SUBMIT ANSWER'),
      //   // label: const Text('NEXT QUESTION'),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child:
                  /********* QuizCard() *******/
                  Container(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: kGold, width: 2 //  <--- border width here
                              ),
                          borderRadius: BorderRadius.circular(12.0),
                          color: kWhite),
                      height: 200,
                      margin: const EdgeInsets.all(12),
                      // color: kBone,
                      width: 600,
                      child: Column(
                        children: const [
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 12, top: 16, right: 12, bottom: 10),
                              child: Text(
                                  "1. What command do you use to output data to the screen?")),
                          // child: Obx(() => const Text("Question 1/10"))),
                          Divider(thickness: 1.5),
                        ],
                      )
                      // Column(
                      //   children: [
                      //     ...List.generate(
                      //         // question.options.length,
                      //         // ignore: avoid_print
                      //         4,
                      //         (index) => const Text('Hello')
                      //         // (index) => Option(
                      //         //   index: index,
                      //         //   text: question.options[index],
                      //         //   press: () => _controller.checkAns(question, index),
                      //         // ),
                      //         ),
                      //   ],
                      // ),
                      ),
              // Placeholder(),

              //  (context, index) => QuestionCard(
              //  question: _questionController.questions[index]),
            ),
            //QuestionCard(question: _questionController.questions[index]),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: ElevatedButton(
                onPressed: () => Get.toNamed(AppRouts.resultRoute),
                style: ElevatedButton.styleFrom(
                  backgroundColor: kGold,
                  elevation: 3,
                ),
                child: const Text('SUBMIT'),
              ),
            )
          ],
        ),
      ),
    );
  }
}


// Column(
//         children: [
//           Text(
//             question.question,
            
//           SizedBox(height: kDefaultPadding / 2),
//           ...List.generate(
//             question.options.length,
//             (index) => Option(
//               index: index,
//               text: question.options[index],
//               press: () => _controller.checkAns(question, index),
//             ),
//           ),
//         ],
//       ),


// Card(
//               margin: const EdgeInsets.symmetric(horizontal: 16),,
//               color: kBG,
//               shape: RoundedRectangleBorder(
//                 side: const BorderSide(color: kGold),
//                 borderRadius: BorderRadius.circular(8.0),
//               ),)