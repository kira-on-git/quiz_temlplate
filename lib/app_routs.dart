//app_routes.dart

import 'package:get/get.dart';
import 'package:quiz_temlplate/app_bindings.dart';
import 'package:quiz_temlplate/screens/home_screen.dart';
import 'package:quiz_temlplate/screens/result_screen.dart';
import 'package:quiz_temlplate/screens/review_screen.dart';
import 'package:quiz_temlplate/screens/second_screen.dart';

//* named routs */
class AppRouts {
  static const home = '/home';
  static const secondRoute = '/second_screen';
  static const resultRoute = '/result_screen';
  static const reviewRoute = '/review_screen';
}

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRouts.home,
      page: () => const HomeScreen(),
      binding: AppBindings(),
    ),
    GetPage(
      name: AppRouts.secondRoute,
      page: () => const SecondScreen(),
      binding: AppBindings(),
    ),
    GetPage(
      name: AppRouts.resultRoute,
      page: () => const ResultScreen(),
      binding: AppBindings(),
    ),
    GetPage(
      name: AppRouts.reviewRoute,
      page: () => const ReviewScreen(),
      binding: AppBindings(),
    ),
  ];
}
