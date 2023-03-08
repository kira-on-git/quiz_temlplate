// result_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_temlplate/app_routs.dart';
import 'package:quiz_temlplate/constants.dart';
// import 'package:get/get.dart';
// import 'package:quiz_temlplate/app_routs.dart';
// import 'package:quiz_temlplate/constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // AppController qnController = Get.put(AppController());

    return Scaffold(
      backgroundColor: kBG,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(flex: 4),
              /*** IMAGE ***/
              SvgPicture.asset(
                width: 100,
                height: 100,
                'assets/svg/diamond.svg',
                // fit: BoxFit.fill,
              ),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: kGold),
                    borderRadius: BorderRadius.circular(16)),
                shadowColor: kBG,
                margin: const EdgeInsets.only(
                    left: 40, top: 0, right: 40, bottom: 30),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 800.0,
                    maxHeight: 200.0,
                    minWidth: 180.0,
                    minHeight: 100.0,
                  ),
                  // ConstrainedBox(
                  // constraints: const BoxConstraints(
                  //   minWidth: 300.0,
                  //   maxWidth: 300.0,
                  //   minHeight: 30.0,
                  //   maxHeight: 100.0,
                  // ),),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        /*** CARD TITLE ***/
                        Text(
                          "your score:",
                          textScaleFactor: ScaleSize.textScaleFactor(context),
                          style: const TextStyle(
                            color: kGold,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        /*** SCORE ***/
                        Text(
                          textScaleFactor: ScaleSize.textScaleFactor(context),
                          "8 / 10",
                          style: const TextStyle(
                            color: kSmoky,
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        /****** BUTTON *****/
                        FilledButton(
                          onPressed: () => Get.toNamed(AppRouts.reviewRoute),
                          clipBehavior: Clip.none,
                          style: FilledButton.styleFrom(
                            backgroundColor: kSmoky,
                            padding: const EdgeInsets.all(16),
                            minimumSize: const Size(100, 40),
                            elevation: 0,
                          ),
                          child: const Text(
                            "Review Answers",
                            style: TextStyle(
                                fontSize: 12,
                                color: kWhite,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        // ElevatedButton(
                        //   // clipBehavior: Clip.none,
                        //   style: ElevatedButton.styleFrom(
                        //     padding: const EdgeInsets.symmetric(
                        //         vertical: 12.0, horizontal: 20.0),
                        //     textStyle: const TextStyle(fontSize: 18),
                        //     backgroundColor: kBG,
                        //     minimumSize: const Size.fromHeight(40),
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //     children: const [
                        //       Icon(
                        //         Icons.arrow_back,
                        //         size: 36,
                        //       ),
                        //       Text("Review all answers"),
                        //     ],
                        //   ),
                        //   onPressed: () => Get.toNamed(AppRouts.reviewRoute),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),

              /*** BUTTON ***/
              ElevatedButton(
                onPressed: () => Get.toNamed(AppRouts.home),
                clipBehavior: Clip.none,
                style: ElevatedButton.styleFrom(
                  backgroundColor: kGold,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                  minimumSize: const Size(100, 40),
                  elevation: 0,
                ),
                child: const Text("Repeat Quiz"),
              ),
              const Spacer(flex: 10)
            ],
          ),
        ),
      ),
    );
  }
}
