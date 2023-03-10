//second_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_temlplate/app_controller.dart';
import 'package:quiz_temlplate/app_routs.dart';
import 'package:quiz_temlplate/constants.dart';

import '../models/quiz_card.dart';

// QuizBrian quizBrian = QuizBrian();

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // 1. CONTROLLER создадим экземпляр HomePageController
  // final AppController controller = Get.put(AppController());
  int? _isNull;
  int? _is0 = 0;
  late Color? _activColor = kGold;
  int? _selectedOption; // index -> value, bei select value == index
  String? isPressed;
  int? _id;
  late int _answer = 2;

//SUBMIT ***/
  void _checkAnswer() {
    int index = 0;
    for (int i = 0; i < 3; i++) {
      index += i;

      setState(() {
        if (index == _answer) {
          _activColor = kTrue;
          print('index == _answer');
        } else if (index != _answer) {
          _activColor = kFalse;
          print('index != _answer');
        } else {
          _activColor = null;
          print('_isSelected - empty');
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double cardHeight = MediaQuery.of(context).size.height / 4;
    double cardWidth = MediaQuery.of(context).size.width / 2;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          //DELETE BACK ARROW
          automaticallyImplyLeading: false,
          title: const Text("Question: 1/10"),
          centerTitle: true,
          backgroundColor: kGold,
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: kGold,
          foregroundColor: kWhite,
          onPressed: () {
            print('_isPressed = true');
            isPressed = 'submit';
          },
          // controller.nextQuestion,
          // _checkAnswer
          label: const Text('SUBMIT ANSWER'),
          // label: const Text('NEXT QUESTION'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              color: kBG,
              width: cardWidth * 2,
              height: cardHeight * 0.3,
              child: const Text(
                "Flutter is an open-source UI software development kit created by ______.",
                // textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: cardWidth * 10,
              height: cardHeight * 2,
              child: Card(
                color: kBG,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: kGold),
                  borderRadius: BorderRadius.circular(20.0),
                ),

                // color: Colors.purple,
                surfaceTintColor: Colors.purple,
                margin: const EdgeInsets.only(
                    left: 16, top: 0, right: 16, bottom: 40),
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      /*** OPTIONS LAYOUT***/
                      ...List.generate(4, (index) {
                        return Material(
                          child: RadioListTile<int?>(
                            key: ValueKey(index),
                            tileColor: Colors.white12,
                            title: const Text('widget.answerText'),
                            subtitle: const Text('Richtig'),
                            controlAffinity: ListTileControlAffinity.trailing,
                            dense: true, //Sriftgröße klein
                            // contentPadding:
                            //     const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            activeColor: _activColor, //_activColor,
                            value: index, //widget.id,
                            groupValue: _selectedOption, //_selectedOption,

                            onChanged: (int? newValue) {
                              setState(() {
                                if (isPressed == 'submit') {
                                  if (index == _answer) {
                                    _activColor = kTrue;
                                    print('index == _answer');
                                  } else if (index != _answer) {
                                    _activColor = kFalse;
                                    print('index != _answer');
                                  }
                                } else {
                                  _selectedOption = newValue;
                                  print('_selectedOption = newValue');
                                  print('_isPressed  from box = $isPressed');
                                }
                                //  else {
                                //   _activColor = null;
                                //   print('_isSelected - empty');
                                // }
                              });
                            },
                            // onChanged: (int? value) {
                            //   if (widget.isSubmitPressed) {
                            //     null;
                            //   } else {
                            //     setState(() => _selectedOption = value);
                            //   }
                            // },
                          ),
                        );
                      }),
                      //           Material(
                      //   child: RadioListTile<int>(
                      //     tileColor: Colors.white12,
                      //     title: const Text('widget.answerText'),
                      //     subtitle: const Text('Richtig'),
                      //     controlAffinity: ListTileControlAffinity.trailing,
                      //     dense: true, //Sriftgröße klein
                      //     // contentPadding:
                      //     //     const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      //     activeColor: Colors.amber//_activColor,
                      //     value: 1,//widget.id,
                      //     groupValue: 0,//_selectedOption,
                      //     onChanged: (value) => null,
                      //     // onChanged: (int? value) {
                      //     //   if (widget.isSubmitPressed) {
                      //     //     null;
                      //     //   } else {
                      //     //     setState(() => _selectedOption = value);
                      //     //   }
                      //     // },
                      //   ),
                      // ),

                      /*** OPTIONS ***/
                      // ...List.generate(quizBrian.getOptionsList()!.length, (index) {
                      //   return Answer(
                      //     answerText: quizBrian.getOptionsList()![index],
                      //     id: index,
                      //     answer: quizBrian.getCorrectAnswer()!,
                      //     isSubmitPressed: _isSubmitPressed,
                      //   );
                      // }),

                      /**** MODELL OF OPTIONS LIST */
                      // ...List.generate(
                      // question.options.length,
                      // (index) => Option(
                      //   index: index,
                      //   text: question.options[index],
                      //   press: () => controller.checkAns(question, index),
                      // ),
                      /**** */
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}


 // 2. CALLBACK для вызова метода increment
      // из нашего controlle добавим floatActionButton
      // floatingActionButton: FloatingActionButton(
      //   onPressed: controller.increment,
      //   tooltip: 'Increment',
      //   backgroundColor: kGold,
      //   child: const Text('next Question'),
      // ),

//  /****** TEXT c подчётом *****/
//             // WRAP Text() into Obx,
//             // чтобы обновлять текущий подсчёт в виджете Text()
//             Obx(
//               () => Text('${controller.count.value}',
//                   style: const TextStyle(
//                       color: kGold, fontSize: 36, fontWeight: FontWeight.w400)),
//             ),