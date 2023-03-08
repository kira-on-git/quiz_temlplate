//main.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_temlplate/app_bindings.dart';
import 'package:quiz_temlplate/app_routs.dart';
import 'package:quiz_temlplate/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter GetX State Management Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomeScreen(),
      initialBinding: AppBindings(),
      getPages: AppPages.pages,
    );
  }
}
