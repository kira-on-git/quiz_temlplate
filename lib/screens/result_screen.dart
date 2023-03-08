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

    return Scaffold(
      backgroundColor: kBG,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.toNamed(AppRouts.secondRoute),
            icon: const Icon(Icons.arrow_back_ios)),
        automaticallyImplyLeading: true,
        title: const Text("Quiz"),
        centerTitle: true,
        backgroundColor: kGold,
      ),
      body: SafeArea(
        child: Center(
          heightFactor: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                /*** IMAGE ***/
                SvgPicture.asset(
                  width: 100,
                  height: 100,
                  'assets/svg/diamond.svg',
                ),
                const Spacer(
                  flex: 4,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 100,
                    minHeight: 25,
                    maxWidth: 450,
                    minWidth: 150,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: kGold),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          /*** CARD TITLE ***/
                          Text(
                            "your score:",
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                            style: const TextStyle(
                              color: kGold,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          /*** SCORE ***/
                          Text(
                            textScaleFactor: ScaleSize.textScaleFactor(context),
                            "8 / 10",
                            style: const TextStyle(
                              color: kSmoky,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                  ),
                ),
                /*** BUTTON ***/
                const Spacer(
                  flex: 8,
                ),
                ElevatedButton(
                  onPressed: () => Get.toNamed(AppRouts.reviewRoute),
                  clipBehavior: Clip.none,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kGold,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 16),
                    minimumSize: const Size(100, 40),
                    elevation: 0,
                  ),
                  child: const Text("Review Answers"),
                ),
                const Spacer(flex: 8)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
