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
        title: const Text("Second Page"),
        centerTitle: true,
        backgroundColor: kGold,
      ),
      // 2. CALLBACK для вызова метода increment
      // из нашего controlle добавим floatActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        backgroundColor: kGold,
        child: const Icon(Icons.add),
      ),
      body: Center(
        //COLUMN
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /****** TEXT c подчётом *****/
            // WRAP Text() into Obx,
            // чтобы обновлять текущий подсчёт в виджете Text()
            Obx(
              () => Text('${controller.count.value}',
                  style: const TextStyle(
                      color: kGold, fontSize: 36, fontWeight: FontWeight.w400)),
            ),
            const SizedBox(
              height: 20,
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kGold,
                elevation: 0,
              ),
              onPressed: () => Get.toNamed(AppRouts.home),
              child: const Text("Submit"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kGold,
                elevation: 0,
              ),
              onPressed: () => Get.toNamed(AppRouts.resultRoute),
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
