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
    return Scaffold(
      backgroundColor: kBG,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               mainAxisSize: MainAxisSize.min,
              children: [
                /*** TITLE ***/
                Text(
                  'Grundlagen der Programmierung',
                  textAlign: TextAlign.center,
                  textScaleFactor: ScaleSize.textScaleFactor(context),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400, color: kGold),
                ),

                /*** TEXT ***/
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    "The Flutter app developers at FlutterDevs have decades of industry experience under a single roof,"
                    " and this empowers us to serve you with excellence.SIMA",
                    style: const TextStyle(
                        color: kWhite,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w200),
                    textScaleFactor: ScaleSize.textScaleFactor(context),
                    textAlign: TextAlign.justify,
                  ),
                ),
                /****** BUTTON *****/
                InkWell(
                    highlightColor: kGold,
                    child: Container(
                      color: kGold,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              "Start Quiz",
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
                    onTap: () {
                      Get.toNamed(AppRouts.secondRoute);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
