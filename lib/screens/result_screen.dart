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
      appBar: AppBar(
        // leading: IconButton(
        //     onPressed: () => Get.toNamed(AppRouts.secondRoute),
        //     icon: const Icon(Icons.arrow_back_ios)),
        //DELETE BACK ARROW
        automaticallyImplyLeading: false,
        title: const Text("QUIZ RESULT"),
        centerTitle: true,
        backgroundColor: kGold,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: kGold,
        foregroundColor: kWhite,
        onPressed: () => Get.toNamed(AppRouts.reviewRoute),
        // icon: Icon(Icons.add),
        label: const Text('REVIEW ANSWERS'),
        // extendedIconLabelSpacing: 0.05,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        // maintainBottomViewPadding: true,
        child: Center(
          heightFactor: 1.3,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                /*** IMAGE ***/
                SvgPicture.asset(
                  width: 100,
                  height: 100,
                  'assets/svg/diamond.svg',
                ),
/********CARD******/
                Padding(
                  padding: EdgeInsets.only(top: 1 * scaleHeight),
                  // top: MediaQuery.of(context).size.height / 10),
                  // padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    width: scaleWidth * 12,
                    height: scaleHeight * 2.2,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: kGold),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            /*** CARD TITLE ***/
                            Text(
                              "your score:",
                              style: TextStyle(
                                color: kGold,
                                fontSize: scaleWidth * 1.5,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            /*** SCORE ***/
                            Text(
                              textScaleFactor:
                                  ScaleSize.textScaleFactor(context),
                              "8 / 10",
                              style: TextStyle(
                                color: kSmoky,
                                fontSize: scaleWidth * 1.4,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
/********CARD******/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
