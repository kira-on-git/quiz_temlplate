// result_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_temlplate/app_routs.dart';
import 'package:quiz_temlplate/constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // AppController qnController = Get.put(AppController());
    double scaleHeight = MediaQuery.of(context).size.height / 10;
    double scaleWidth = MediaQuery.of(context).size.width / 20;
    return Scaffold(
      backgroundColor: kBG,
      body: Center(
        heightFactor: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisSize: MainAxisSize.min,
            children: [
              /*** IMAGE ***/
              SvgPicture.asset(
                width: 100,
                height: 100,
                'assets/svg/diamond.svg',
              ),
/********CARD******/
              SizedBox(
                width: 8 * scaleWidth,
                height: 1.5 * scaleHeight,
                // width: 160,
                // height: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: kGold),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        /*** CARD TITLE ***/
                        const Text(
                          "your score:",
                          style: TextStyle(
                            color: kGold,
                            fontSize: 18, //scaleWidth * 1.3,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        // SizedBox(height: 10),
                        /*** SCORE ***/
                        Text(
                          textScaleFactor: ScaleSize.textScaleFactor(context),
                          "8 / 10",
                          style: const TextStyle(
                            color: kSmoky,
                            fontSize: 18, //scaleWidth * 1.2,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                ),
              ),

/********CARD******/
/**** review answers BUTTON ****/
              Padding(
                padding: EdgeInsets.only(
                    top: 0.1 * scaleHeight, bottom: 0.3 * scaleHeight),
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(AppRouts.reviewRoute),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBG,
                    foregroundColor: kWhite,
                    side: const BorderSide(
                      color: kGold,
                    ),
                  ),
                  child: const Text(
                    'REVIEW ANSWERS',
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              /****** BUTTON *****/
              InkWell(
                onTap: () {
                  //questionController.questions.shuffle();
                  Get.toNamed(AppRouts.home);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  color: kGold,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Start",
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
