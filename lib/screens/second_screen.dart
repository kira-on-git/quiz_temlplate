//second_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_temlplate/app_controller.dart';
import 'package:quiz_temlplate/app_routs.dart';
import 'package:quiz_temlplate/constants.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // 1. CONTROLLER создадим экземпляр HomePageController
  final AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
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
        onPressed: () => Get.toNamed(AppRouts.resultRoute),
        // icon: Icon(Icons.add),
        label: const Text('SUBMIT ANSWER'),
        // label: const Text('NEXT QUESTION'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        //COLUMN
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ...List.generate(4, (index) {
            //   RadioListTile(
            //     groupValue: Placeholder,
            //   );
            // })
          ],
        ),
      ),
    );
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