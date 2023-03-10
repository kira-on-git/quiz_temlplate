//constants.dart

import 'dart:math';

import 'package:flutter/material.dart';

// const KPrimaryColor = Colors.amber;
// const kSecondaryColor = Color(0xFF8B94BC);
// const kGreenColor = Color(0xFF6AC259);
// const kRedColor = Color(0xFFE92E30);
// const kGrayColor = Color(0xFFC1C1C1);
// const kBlackColor = Color(0xFF101010);
// const kPrimaryGradient = LinearGradient(
//   colors: [Color(0xFFa1874d), Color(0xFF2d3a4b)],
//   begin: Alignment.centerLeft,
//   end: Alignment.centerRight,
// );

const kBG = Color(0xFF2d3a4b);
const kSmoky = Color.fromRGBO(64, 83, 107, 1);
const kGold = Color(0xFFa1874d);
const kBone = Color(0xffd4ccbe);
const kWhite = Colors.white;
const kRed = Color(0xff7d1f23);
const kFalse = Color(0xffd00e62);
const kTrue = Color(0xff0ed085);

// const double kDefaultPadding = 20.0;

//responsive Text
class ScaleSize {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 1.4}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}

            // /****** SNACKBAR *****/
            // // In this button, onPressed method we will add inside Get.
            // // snackbar().
            // // Also, we will add snackPosition and backgroundColor.
            // // In the child method, we will add the text ‘Show Snackbar’.
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       textStyle: const TextStyle(fontSize: 16),
            //       backgroundColor: kElementColor,
            //       // elevation: 3,
            //     ),
            //     onPressed: () {
            //       Get.snackbar('GetX Snackbar', 'Yay! Awesome GetX Snackbar',
            //           snackPosition: SnackPosition.BOTTOM,
            //           backgroundColor: kElementColor,
            //           colorText: kBackgroundColor);
            //     },
            //     child: const Text('Show Snackbar')),
            // const SizedBox(
            //   height: 10,
            // ),

            /****** ALERT *****/
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       textStyle: const TextStyle(fontSize: 18),
            //       backgroundColor: kElementColor,
            //     ),
            //     onPressed: () {
            //       Get.defaultDialog(
            //         backgroundColor: Colors.white,
            //         contentPadding: const EdgeInsets.all(26),
            //         title: 'GetX Alert',
            //         titleStyle: const TextStyle(color: kElementColor),
            //         middleText: 'Simple GetX alert',
            //         //button
            //         onConfirm: () => null,
            //         onCancel: () => null,
            //         buttonColor: kElementColor,
            //         textConfirm: 'Okay',
            //         confirmTextColor: Colors.white,
            //         textCancel: 'Cancel',
            //         cancelTextColor: kElementColor,
            //       );
            //     },
            //     child: const Text('Show AlertDialog')),

                        // Image.asset(
            //   "assets/png/vermeer_dog.png",
            //   width: 150,
            // ),
            // const FlutterLogo(
            //   size: 150,
            // ),
            // const SizedBox(
            //   height: 50,
            // ),
/**** BUTTON */
// ElevatedButton(
//                   onPressed: () => Get.toNamed(AppRouts.reviewRoute),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: kBG,
//                     foregroundColor: kWhite,
//                     side: const BorderSide(
//                       color: kGold,
//                     ),
//                   ),
//                   child: const Text(
//                     'REVIEW ANSWERS',
//                     style: TextStyle(
//                         letterSpacing: 1,
//                         fontSize: 10,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ),

/*** LIST VIEW BUILDER ****/
// Center(
//         /***********************/
//         child: ListView.builder(
//           itemCount: 10,
//           itemBuilder: (context, position) {
//             position += 1;
//             return Card(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   position.toString(),
//                   style: TextStyle(fontSize: 22.0),
//                 ),
//               ),
//             );
//           },
//         ),)