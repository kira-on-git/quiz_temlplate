// home_page.dart'

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_temlplate/app_routs.dart';
import 'package:quiz_temlplate/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 1. CONTROLLER создадим экземпляр HomePageController
  // final AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    // QuestionController questionController = Get.put(QuestionController());
    double scaleHeight = MediaQuery.of(context).size.height / 10;
    double scaleWidth = MediaQuery.of(context).size.width / 20;
    return Scaffold(
      backgroundColor: kBG,
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: const Text("Test"),
      //   centerTitle: true,
      //   backgroundColor: kGold,
      // ),
      body: Center(
        heightFactor: 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 60, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               mainAxisSize: MainAxisSize.min,
            children: [
              /*** TITLE ***/
              Flexible(
                child: Text(
                  'Grundlagen der Programmierung',
                  textAlign: TextAlign.center,
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                  style: TextStyle(
                      fontSize: 0.3 * scaleHeight,
                      fontWeight: FontWeight.w400,
                      color: kGold),
                ),
              ),

              /*** TEXT ***/
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 20, top: 0, right: 20, bottom: 0.6 * scaleHeight),
                  child: Text(
                    '''HIER ist eine Begrüßung und Beschreibung, wie diesen Test-App zu nutzen.''',
                    style: TextStyle(
                        color: kWhite,
                        fontSize: 0.24 * scaleHeight,
                        fontWeight: FontWeight.w200),
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                    // textAlign: TextAlign.justify,
                  ),
                ),
              ),
              /****** BUTTON *****/
              InkWell(
                // highlightColor: kBG, //onClick
                // focusColor: kTrue, //???
                // hoverColor: kGold, //onMauseOver
                onTap: () {
                  //questionController.questions.shuffle();
                  Get.toNamed(AppRouts.quizRoute);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  color: kGold,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Start Test",
                        style: TextStyle(
                            color: kWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.6),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: kWhite,
                        size: 36,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
