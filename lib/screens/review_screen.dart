//second_screen.dart

import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:quiz_temlplate/app_controller.dart';
// import 'package:quiz_temlplate/app_routs.dart';
// import 'package:quiz_temlplate/constants.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('BUCH Klick'),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Scaffold(
                appBar: AppBar(
                  title: const Text('BUCH Detail'),
                ),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Erste Zeile'),
                    Text('Zweite Zeile'),
                    Text('Dritte Zeile'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class ReviewScreen extends StatefulWidget {
//   const ReviewScreen({Key? key}) : super(key: key);

//   @override
//   State<ReviewScreen> createState() => _ReviewScreenState();
// }

// class _ReviewScreenState extends State<ReviewScreen> {
//   // 1. CONTROLLER создадим экземпляр HomePageController
//   final AppController controller = Get.put(AppController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         //DELETE BACK ARROW
//         automaticallyImplyLeading: false,
//         title: const Text("Review Page"),
//         centerTitle: true,
//         backgroundColor: kGold,
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             /****** answered QUESTIONS *****/
//             const Text('Show answered question scrolable list',
//                 style: TextStyle(
//                     color: kBG, fontSize: 16, fontWeight: FontWeight.w400)),
//             const SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.02,
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: kGold,
//                 elevation: 0,
//               ),
//               onPressed: () => Get.toNamed(AppRouts.home),
//               child: const Text("Back to Start"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
